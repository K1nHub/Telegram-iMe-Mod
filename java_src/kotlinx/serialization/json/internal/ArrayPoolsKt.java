package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
/* compiled from: ArrayPools.kt */
/* loaded from: classes4.dex */
public final class ArrayPoolsKt {
    private static final int MAX_CHARS_IN_POOL;

    static {
        Object m1943constructorimpl;
        Integer intOrNull;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(property);
            m1943constructorimpl = Result.m1943constructorimpl(intOrNull);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1948isFailureimpl(m1943constructorimpl)) {
            m1943constructorimpl = null;
        }
        Integer num = (Integer) m1943constructorimpl;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 2097152;
    }
}
