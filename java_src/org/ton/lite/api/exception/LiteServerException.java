package org.ton.lite.api.exception;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LiteServerException.kt */
/* loaded from: classes6.dex */
public abstract class LiteServerException extends RuntimeException {
    public static final Companion Companion = new Companion(null);
    private final String message;

    public /* synthetic */ LiteServerException(int i, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    /* compiled from: LiteServerException.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LiteServerException create(int i, String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            if (i != 621) {
                switch (i) {
                    case 601:
                        return new LiteServerFailureException(message);
                    case 602:
                        return new LiteServerErrorException(message);
                    case 603:
                        return new LiteServerWarningException(message);
                    default:
                        switch (i) {
                            case 651:
                                return new LiteServerNotReadyException(message);
                            case 652:
                                return new LiteServerTimeoutException(message);
                            case 653:
                                return new LiteServerCancelledException(message);
                            default:
                                return new LiteServerUnknownException(i, message);
                        }
                }
            }
            return new LiteServerProtoviolationException(message);
        }
    }

    private LiteServerException(int i, String str) {
        this.message = str;
    }
}
