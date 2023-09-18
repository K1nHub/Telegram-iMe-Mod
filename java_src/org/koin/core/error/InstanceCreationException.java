package org.koin.core.error;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: InstanceCreationException.kt */
/* loaded from: classes6.dex */
public final class InstanceCreationException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InstanceCreationException(String msg, Exception parent) {
        super(msg, parent);
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(parent, "parent");
    }
}
