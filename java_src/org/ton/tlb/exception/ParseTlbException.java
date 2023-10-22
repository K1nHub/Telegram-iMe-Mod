package org.ton.tlb.exception;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ParseTlbException.kt */
/* loaded from: classes6.dex */
public final class ParseTlbException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParseTlbException(String message, Throwable th) {
        super(message, th);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
