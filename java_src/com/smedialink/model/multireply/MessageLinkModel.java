package com.smedialink.model.multireply;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: MessageLinkModel.kt */
/* loaded from: classes3.dex */
public final class MessageLinkModel {
    private final int messageId;
    private final String messageLink;

    public static /* synthetic */ MessageLinkModel copy$default(MessageLinkModel messageLinkModel, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = messageLinkModel.messageId;
        }
        if ((i2 & 2) != 0) {
            str = messageLinkModel.messageLink;
        }
        return messageLinkModel.copy(i, str);
    }

    public final int component1() {
        return this.messageId;
    }

    public final String component2() {
        return this.messageLink;
    }

    public final MessageLinkModel copy(int i, String messageLink) {
        Intrinsics.checkNotNullParameter(messageLink, "messageLink");
        return new MessageLinkModel(i, messageLink);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageLinkModel) {
            MessageLinkModel messageLinkModel = (MessageLinkModel) obj;
            return this.messageId == messageLinkModel.messageId && Intrinsics.areEqual(this.messageLink, messageLinkModel.messageLink);
        }
        return false;
    }

    public int hashCode() {
        return (this.messageId * 31) + this.messageLink.hashCode();
    }

    public String toString() {
        return "MessageLinkModel(messageId=" + this.messageId + ", messageLink=" + this.messageLink + ')';
    }

    public MessageLinkModel(int i, String messageLink) {
        Intrinsics.checkNotNullParameter(messageLink, "messageLink");
        this.messageId = i;
        this.messageLink = messageLink;
    }

    public final int getMessageId() {
        return this.messageId;
    }

    public final String getMessageLink() {
        return this.messageLink;
    }
}
