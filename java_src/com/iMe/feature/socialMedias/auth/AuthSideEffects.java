package com.iMe.feature.socialMedias.auth;

import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AuthSideEffects.kt */
/* loaded from: classes3.dex */
public abstract class AuthSideEffects {
    public /* synthetic */ AuthSideEffects(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* compiled from: AuthSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class LoadUrl extends AuthSideEffects {
        private final Map<String, String> authHeader;
        private final String url;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof LoadUrl) {
                LoadUrl loadUrl = (LoadUrl) obj;
                return Intrinsics.areEqual(this.url, loadUrl.url) && Intrinsics.areEqual(this.authHeader, loadUrl.authHeader);
            }
            return false;
        }

        public int hashCode() {
            return (this.url.hashCode() * 31) + this.authHeader.hashCode();
        }

        public String toString() {
            return "LoadUrl(url=" + this.url + ", authHeader=" + this.authHeader + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LoadUrl(String url, Map<String, String> authHeader) {
            super(null);
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(authHeader, "authHeader");
            this.url = url;
            this.authHeader = authHeader;
        }

        public final Map<String, String> getAuthHeader() {
            return this.authHeader;
        }

        public final String getUrl() {
            return this.url;
        }
    }

    private AuthSideEffects() {
    }

    /* compiled from: AuthSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class ShowError extends AuthSideEffects {
        private final String message;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ShowError) && Intrinsics.areEqual(this.message, ((ShowError) obj).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "ShowError(message=" + this.message + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ShowError(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* compiled from: AuthSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class FinishAuth extends AuthSideEffects {
        public static final FinishAuth INSTANCE = new FinishAuth();

        private FinishAuth() {
            super(null);
        }
    }

    /* compiled from: AuthSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class ReloadPage extends AuthSideEffects {
        public static final ReloadPage INSTANCE = new ReloadPage();

        private ReloadPage() {
            super(null);
        }
    }

    /* compiled from: AuthSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class RemoveCookies extends AuthSideEffects {
        public static final RemoveCookies INSTANCE = new RemoveCookies();

        private RemoveCookies() {
            super(null);
        }
    }

    /* compiled from: AuthSideEffects.kt */
    /* loaded from: classes3.dex */
    public static final class ShowAccessError extends AuthSideEffects {
        public static final ShowAccessError INSTANCE = new ShowAccessError();

        private ShowAccessError() {
            super(null);
        }
    }
}
