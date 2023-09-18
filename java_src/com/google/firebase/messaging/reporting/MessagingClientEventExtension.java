package com.google.firebase.messaging.reporting;

import com.google.android.gms.internal.firebase_messaging.zze;
import com.google.android.gms.internal.firebase_messaging.zzs;
/* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
/* loaded from: classes4.dex */
public final class MessagingClientEventExtension {
    private final MessagingClientEvent messaging_client_event_;

    /* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
    /* loaded from: classes4.dex */
    public static final class Builder {
        private MessagingClientEvent messaging_client_event_ = null;

        Builder() {
        }

        public MessagingClientEventExtension build() {
            return new MessagingClientEventExtension(this.messaging_client_event_);
        }

        public Builder setMessagingClientEvent(MessagingClientEvent messagingClientEvent) {
            this.messaging_client_event_ = messagingClientEvent;
            return this;
        }
    }

    static {
        new Builder().build();
    }

    MessagingClientEventExtension(MessagingClientEvent messagingClientEvent) {
        this.messaging_client_event_ = messagingClientEvent;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @zzs(zza = 1)
    public MessagingClientEvent getMessagingClientEventInternal() {
        return this.messaging_client_event_;
    }

    public byte[] toByteArray() {
        return zze.zzc(this);
    }
}
