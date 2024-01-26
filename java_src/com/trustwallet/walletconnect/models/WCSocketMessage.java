package com.trustwallet.walletconnect.models;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCSocketMessage.kt */
/* loaded from: classes4.dex */
public final class WCSocketMessage {
    private final String payload;
    private final String topic;
    private final MessageType type;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCSocketMessage) {
            WCSocketMessage wCSocketMessage = (WCSocketMessage) obj;
            return Intrinsics.areEqual(this.topic, wCSocketMessage.topic) && this.type == wCSocketMessage.type && Intrinsics.areEqual(this.payload, wCSocketMessage.payload);
        }
        return false;
    }

    public int hashCode() {
        return (((this.topic.hashCode() * 31) + this.type.hashCode()) * 31) + this.payload.hashCode();
    }

    public String toString() {
        return "WCSocketMessage(topic=" + this.topic + ", type=" + this.type + ", payload=" + this.payload + ')';
    }

    public WCSocketMessage(String topic, MessageType type, String payload) {
        Intrinsics.checkNotNullParameter(topic, "topic");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.topic = topic;
        this.type = type;
        this.payload = payload;
    }

    public final String getPayload() {
        return this.payload;
    }
}
