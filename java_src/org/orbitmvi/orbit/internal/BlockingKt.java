package org.orbitmvi.orbit.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
/* compiled from: Blocking.kt */
/* loaded from: classes6.dex */
public final class BlockingKt {
    public static final <T> T runBlocking(Function1<? super Continuation<? super T>, ? extends Object> block) {
        Object runBlocking$default;
        Intrinsics.checkNotNullParameter(block, "block");
        runBlocking$default = BuildersKt__BuildersKt.runBlocking$default(null, new BlockingKt$runBlocking$1(block, null), 1, null);
        return (T) runBlocking$default;
    }
}
