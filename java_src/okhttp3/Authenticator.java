package okhttp3;

import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.authenticator.JavaNetAuthenticator;
/* compiled from: Authenticator.kt */
/* loaded from: classes6.dex */
public interface Authenticator {
    public static final Authenticator NONE;

    Request authenticate(Route route, Response response) throws IOException;

    /* compiled from: Authenticator.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {

        /* compiled from: Authenticator.kt */
        /* loaded from: classes6.dex */
        private static final class AuthenticatorNone implements Authenticator {
            @Override // okhttp3.Authenticator
            public Request authenticate(Route route, Response response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return null;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        NONE = new Companion.AuthenticatorNone();
        new JavaNetAuthenticator(null, 1, null);
    }
}
