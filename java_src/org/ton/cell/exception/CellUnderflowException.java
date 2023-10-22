package org.ton.cell.exception;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: exceptions.kt */
/* loaded from: classes6.dex */
public final class CellUnderflowException extends RuntimeException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellUnderflowException(Throwable cause) {
        super("Cell underflow", cause);
        Intrinsics.checkNotNullParameter(cause, "cause");
    }
}
