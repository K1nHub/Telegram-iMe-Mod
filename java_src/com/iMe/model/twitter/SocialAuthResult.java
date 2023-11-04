package com.iMe.model.twitter;

import com.google.gson.annotations.SerializedName;
import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialAuthResult.kt */
/* loaded from: classes3.dex */
public abstract class SocialAuthResult {
    public /* synthetic */ SocialAuthResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: SocialAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Success extends SocialAuthResult {
        @SerializedName("twitterUserId")
        private final long socialId;
        @SerializedName("status")
        private final String status;

        public Success() {
            this(null, 0L, 3, null);
        }

        public static /* synthetic */ Success copy$default(Success success, String str, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                str = success.status;
            }
            if ((i & 2) != 0) {
                j = success.socialId;
            }
            return success.copy(str, j);
        }

        public final String component1() {
            return this.status;
        }

        public final long component2() {
            return this.socialId;
        }

        public final Success copy(String status, long j) {
            Intrinsics.checkNotNullParameter(status, "status");
            return new Success(status, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Success) {
                Success success = (Success) obj;
                return Intrinsics.areEqual(this.status, success.status) && this.socialId == success.socialId;
            }
            return false;
        }

        public int hashCode() {
            return (this.status.hashCode() * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.socialId);
        }

        public String toString() {
            return "Success(status=" + this.status + ", socialId=" + this.socialId + ')';
        }

        public /* synthetic */ Success(String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? -1L : j);
        }

        public final String getStatus() {
            return this.status;
        }

        public final long getSocialId() {
            return this.socialId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(String status, long j) {
            super(null);
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
            this.socialId = j;
        }
    }

    private SocialAuthResult() {
    }

    /* compiled from: SocialAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Verification extends SocialAuthResult {
        private final long socialId;

        public static /* synthetic */ Verification copy$default(Verification verification, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = verification.socialId;
            }
            return verification.copy(j);
        }

        public final long component1() {
            return this.socialId;
        }

        public final Verification copy(long j) {
            return new Verification(j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Verification) && this.socialId == ((Verification) obj).socialId;
        }

        public int hashCode() {
            return ProfileData$$ExternalSyntheticBackport0.m1018m(this.socialId);
        }

        public String toString() {
            return "Verification(socialId=" + this.socialId + ')';
        }

        public Verification(long j) {
            super(null);
            this.socialId = j;
        }

        public final long getSocialId() {
            return this.socialId;
        }
    }

    /* compiled from: SocialAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Failure extends SocialAuthResult {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* compiled from: SocialAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Cancelled extends SocialAuthResult {
        public static final Cancelled INSTANCE = new Cancelled();

        private Cancelled() {
            super(null);
        }
    }

    /* compiled from: SocialAuthResult.kt */
    /* loaded from: classes3.dex */
    public static final class Logout extends SocialAuthResult {
        public static final Logout INSTANCE = new Logout();

        private Logout() {
            super(null);
        }
    }
}
