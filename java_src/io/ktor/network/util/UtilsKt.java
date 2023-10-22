package io.ktor.network.util;

import io.ktor.util.date.DateJvmKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Utils.kt */
/* loaded from: classes4.dex */
public final class UtilsKt {
    public static /* synthetic */ Timeout createTimeout$default(CoroutineScope coroutineScope, String str, long j, Function0 function0, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        String str2 = str;
        if ((i & 4) != 0) {
            function0 = new Function0<Long>() { // from class: io.ktor.network.util.UtilsKt$createTimeout$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Long invoke() {
                    return Long.valueOf(DateJvmKt.getTimeMillis());
                }
            };
        }
        return createTimeout(coroutineScope, str2, j, function0, function1);
    }

    public static final Timeout createTimeout(CoroutineScope coroutineScope, String name, long j, Function0<Long> clock, Function1<? super Continuation<? super Unit>, ? extends Object> onTimeout) {
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(onTimeout, "onTimeout");
        return new Timeout(name, j, clock, coroutineScope, onTimeout);
    }
}
