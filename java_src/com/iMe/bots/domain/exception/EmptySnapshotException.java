package com.iMe.bots.domain.exception;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: EmptySnapshotException.kt */
/* loaded from: classes3.dex */
public final class EmptySnapshotException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmptySnapshotException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
