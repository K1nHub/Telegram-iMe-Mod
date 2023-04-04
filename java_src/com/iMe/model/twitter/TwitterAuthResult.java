package com.iMe.model.twitter;

import com.google.gson.annotations.SerializedName;
import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterAuthResult.kt */
/* loaded from: classes3.dex */
public abstract class TwitterAuthResult {
    public /* synthetic */ TwitterAuthResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private TwitterAuthResult() {
    }

    /* compiled from: TwitterAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Success extends TwitterAuthResult {
        @SerializedName("access_token")
        private final String accessToken;
        private final long expiresIn;
        private final String refreshToken;
        private final String status;
        private final long twitterUserId;
        private final String twitterUsername;

        public final String component1() {
            return this.accessToken;
        }

        public final String component2() {
            return this.refreshToken;
        }

        public final long component3() {
            return this.expiresIn;
        }

        public final long component4() {
            return this.twitterUserId;
        }

        public final String component5() {
            return this.twitterUsername;
        }

        public final String component6() {
            return this.status;
        }

        public final Success copy(String accessToken, String refreshToken, long j, long j2, String twitterUsername, String status) {
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
            Intrinsics.checkNotNullParameter(twitterUsername, "twitterUsername");
            Intrinsics.checkNotNullParameter(status, "status");
            return new Success(accessToken, refreshToken, j, j2, twitterUsername, status);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Success) {
                Success success = (Success) obj;
                return Intrinsics.areEqual(this.accessToken, success.accessToken) && Intrinsics.areEqual(this.refreshToken, success.refreshToken) && this.expiresIn == success.expiresIn && this.twitterUserId == success.twitterUserId && Intrinsics.areEqual(this.twitterUsername, success.twitterUsername) && Intrinsics.areEqual(this.status, success.status);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((this.accessToken.hashCode() * 31) + this.refreshToken.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.expiresIn)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.twitterUserId)) * 31) + this.twitterUsername.hashCode()) * 31) + this.status.hashCode();
        }

        public String toString() {
            return "Success(accessToken=" + this.accessToken + ", refreshToken=" + this.refreshToken + ", expiresIn=" + this.expiresIn + ", twitterUserId=" + this.twitterUserId + ", twitterUsername=" + this.twitterUsername + ", status=" + this.status + ')';
        }

        public final String getAccessToken() {
            return this.accessToken;
        }

        public final String getRefreshToken() {
            return this.refreshToken;
        }

        public final long getExpiresIn() {
            return this.expiresIn;
        }

        public final long getTwitterUserId() {
            return this.twitterUserId;
        }

        public final String getTwitterUsername() {
            return this.twitterUsername;
        }

        public final String getStatus() {
            return this.status;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(String accessToken, String refreshToken, long j, long j2, String twitterUsername, String status) {
            super(null);
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
            Intrinsics.checkNotNullParameter(twitterUsername, "twitterUsername");
            Intrinsics.checkNotNullParameter(status, "status");
            this.accessToken = accessToken;
            this.refreshToken = refreshToken;
            this.expiresIn = j;
            this.twitterUserId = j2;
            this.twitterUsername = twitterUsername;
            this.status = status;
        }
    }

    /* compiled from: TwitterAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Failure extends TwitterAuthResult {
        private final String message;

        public static /* synthetic */ Failure copy$default(Failure failure, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = failure.message;
            }
            return failure.copy(str);
        }

        public final String component1() {
            return this.message;
        }

        public final Failure copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new Failure(message);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && Intrinsics.areEqual(this.message, ((Failure) obj).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "Failure(message=" + this.message + ')';
        }

        public final String getMessage() {
            return this.message;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }
    }

    /* compiled from: TwitterAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Cancelled extends TwitterAuthResult {
        public static final Cancelled INSTANCE = new Cancelled();

        private Cancelled() {
            super(null);
        }
    }
}
