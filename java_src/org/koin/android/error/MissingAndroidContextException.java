package org.koin.android.error;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: MissingAndroidContextException.kt */
/* loaded from: classes6.dex */
public final class MissingAndroidContextException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingAndroidContextException(String s) {
        super(s);
        Intrinsics.checkNotNullParameter(s, "s");
    }
}
