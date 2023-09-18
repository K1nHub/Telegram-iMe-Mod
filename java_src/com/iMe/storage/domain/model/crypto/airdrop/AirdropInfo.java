package com.iMe.storage.domain.model.crypto.airdrop;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AirdropInfo.kt */
/* loaded from: classes4.dex */
public abstract class AirdropInfo {
    public /* synthetic */ AirdropInfo(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private AirdropInfo() {
    }

    /* compiled from: AirdropInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Ready extends AirdropInfo {
        private final String requestId;
        private final int tokenValue;

        public static /* synthetic */ Ready copy$default(Ready ready, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = ready.requestId;
            }
            if ((i2 & 2) != 0) {
                i = ready.tokenValue;
            }
            return ready.copy(str, i);
        }

        public final String component1() {
            return this.requestId;
        }

        public final int component2() {
            return this.tokenValue;
        }

        public final Ready copy(String requestId, int i) {
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            return new Ready(requestId, i);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Ready) {
                Ready ready = (Ready) obj;
                return Intrinsics.areEqual(this.requestId, ready.requestId) && this.tokenValue == ready.tokenValue;
            }
            return false;
        }

        public int hashCode() {
            return (this.requestId.hashCode() * 31) + this.tokenValue;
        }

        public String toString() {
            return "Ready(requestId=" + this.requestId + ", tokenValue=" + this.tokenValue + ')';
        }

        public final String getRequestId() {
            return this.requestId;
        }

        public final int getTokenValue() {
            return this.tokenValue;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ready(String requestId, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(requestId, "requestId");
            this.requestId = requestId;
            this.tokenValue = i;
        }
    }

    /* compiled from: AirdropInfo.kt */
    /* loaded from: classes4.dex */
    public static final class NotReady extends AirdropInfo {
        public static final NotReady INSTANCE = new NotReady();

        private NotReady() {
            super(null);
        }
    }
}
