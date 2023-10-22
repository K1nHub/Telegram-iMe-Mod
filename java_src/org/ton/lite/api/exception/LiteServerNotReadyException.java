package org.ton.lite.api.exception;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LiteServerException.kt */
/* loaded from: classes6.dex */
public final class LiteServerNotReadyException extends LiteServerException {
    static {
        new Companion(null);
    }

    /* compiled from: LiteServerException.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiteServerNotReadyException(String message) {
        super(651, message, null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
