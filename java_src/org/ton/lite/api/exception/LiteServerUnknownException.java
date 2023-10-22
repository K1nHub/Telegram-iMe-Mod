package org.ton.lite.api.exception;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: LiteServerException.kt */
/* loaded from: classes6.dex */
public final class LiteServerUnknownException extends LiteServerException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiteServerUnknownException(int i, String message) {
        super(i, message, null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
