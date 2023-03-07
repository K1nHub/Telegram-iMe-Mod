package org.koin.core.error;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: NoParameterFoundException.kt */
/* loaded from: classes4.dex */
public final class NoParameterFoundException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoParameterFoundException(String msg) {
        super(msg);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
