package org.koin.core.error;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: KoinAppAlreadyStartedException.kt */
/* loaded from: classes6.dex */
public final class KoinAppAlreadyStartedException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KoinAppAlreadyStartedException(String msg) {
        super(msg);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
