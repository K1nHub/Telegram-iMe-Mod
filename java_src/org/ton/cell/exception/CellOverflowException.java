package org.ton.cell.exception;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: exceptions.kt */
/* loaded from: classes6.dex */
public final class CellOverflowException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellOverflowException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
