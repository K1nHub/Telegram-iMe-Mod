package com.iMe.storage.data.network.model.response.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentSessionDataResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentSessionDataResponse {
    private final String clientId;
    private final String hostname;
    private final String session;
    private final String sessionPayload;

    public static /* synthetic */ TonFragmentSessionDataResponse copy$default(TonFragmentSessionDataResponse tonFragmentSessionDataResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tonFragmentSessionDataResponse.session;
        }
        if ((i & 2) != 0) {
            str2 = tonFragmentSessionDataResponse.sessionPayload;
        }
        if ((i & 4) != 0) {
            str3 = tonFragmentSessionDataResponse.hostname;
        }
        if ((i & 8) != 0) {
            str4 = tonFragmentSessionDataResponse.clientId;
        }
        return tonFragmentSessionDataResponse.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.session;
    }

    public final String component2() {
        return this.sessionPayload;
    }

    public final String component3() {
        return this.hostname;
    }

    public final String component4() {
        return this.clientId;
    }

    public final TonFragmentSessionDataResponse copy(String session, String sessionPayload, String hostname, String clientId) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(sessionPayload, "sessionPayload");
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        return new TonFragmentSessionDataResponse(session, sessionPayload, hostname, clientId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentSessionDataResponse) {
            TonFragmentSessionDataResponse tonFragmentSessionDataResponse = (TonFragmentSessionDataResponse) obj;
            return Intrinsics.areEqual(this.session, tonFragmentSessionDataResponse.session) && Intrinsics.areEqual(this.sessionPayload, tonFragmentSessionDataResponse.sessionPayload) && Intrinsics.areEqual(this.hostname, tonFragmentSessionDataResponse.hostname) && Intrinsics.areEqual(this.clientId, tonFragmentSessionDataResponse.clientId);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.session.hashCode() * 31) + this.sessionPayload.hashCode()) * 31) + this.hostname.hashCode()) * 31) + this.clientId.hashCode();
    }

    public String toString() {
        return "TonFragmentSessionDataResponse(session=" + this.session + ", sessionPayload=" + this.sessionPayload + ", hostname=" + this.hostname + ", clientId=" + this.clientId + ')';
    }

    public TonFragmentSessionDataResponse(String session, String sessionPayload, String hostname, String clientId) {
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(sessionPayload, "sessionPayload");
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(clientId, "clientId");
        this.session = session;
        this.sessionPayload = sessionPayload;
        this.hostname = hostname;
        this.clientId = clientId;
    }

    public final String getSession() {
        return this.session;
    }

    public final String getSessionPayload() {
        return this.sessionPayload;
    }

    public final String getHostname() {
        return this.hostname;
    }

    public final String getClientId() {
        return this.clientId;
    }
}
