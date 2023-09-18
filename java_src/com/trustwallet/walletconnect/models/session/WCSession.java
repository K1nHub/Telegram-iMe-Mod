package com.trustwallet.walletconnect.models.session;

import android.net.Uri;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: WCSession.kt */
/* loaded from: classes6.dex */
public final class WCSession {
    public static final Companion Companion = new Companion(null);
    private final String bridge;
    private final String key;
    private final String topic;
    private final String version;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCSession) {
            WCSession wCSession = (WCSession) obj;
            return Intrinsics.areEqual(this.topic, wCSession.topic) && Intrinsics.areEqual(this.version, wCSession.version) && Intrinsics.areEqual(this.bridge, wCSession.bridge) && Intrinsics.areEqual(this.key, wCSession.key);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.topic.hashCode() * 31) + this.version.hashCode()) * 31) + this.bridge.hashCode()) * 31) + this.key.hashCode();
    }

    public String toString() {
        return "WCSession(topic=" + this.topic + ", version=" + this.version + ", bridge=" + this.bridge + ", key=" + this.key + ')';
    }

    public WCSession(String topic, String version, String bridge, String key) {
        Intrinsics.checkNotNullParameter(topic, "topic");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(bridge, "bridge");
        Intrinsics.checkNotNullParameter(key, "key");
        this.topic = topic;
        this.version = version;
        this.bridge = bridge;
        this.key = key;
    }

    public final String getTopic() {
        return this.topic;
    }

    public final String getVersion() {
        return this.version;
    }

    public final String getBridge() {
        return this.bridge;
    }

    public final String getKey() {
        return this.key;
    }

    /* compiled from: WCSession.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WCSession from(String from) {
            boolean startsWith$default;
            String replace$default;
            Intrinsics.checkNotNullParameter(from, "from");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(from, "wc:", false, 2, null);
            if (startsWith$default) {
                replace$default = StringsKt__StringsJVMKt.replace$default(from, "wc:", "wc://", false, 4, (Object) null);
                Uri parse = Uri.parse(replace$default);
                String queryParameter = parse.getQueryParameter("bridge");
                String queryParameter2 = parse.getQueryParameter("key");
                String userInfo = parse.getUserInfo();
                String host = parse.getHost();
                if (queryParameter == null || queryParameter2 == null || userInfo == null || host == null) {
                    return null;
                }
                return new WCSession(userInfo, host, queryParameter, queryParameter2);
            }
            return null;
        }
    }
}
