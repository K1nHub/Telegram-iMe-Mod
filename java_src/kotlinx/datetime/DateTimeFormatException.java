package kotlinx.datetime;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: Exceptions.kt */
/* loaded from: classes4.dex */
public final class DateTimeFormatException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DateTimeFormatException(Throwable cause) {
        super(cause);
        Intrinsics.checkNotNullParameter(cause, "cause");
    }
}
