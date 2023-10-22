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
        Object m1935constructorimpl;
        Integer intOrNull;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(property);
            m1935constructorimpl = Result.m1935constructorimpl(intOrNull);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1935constructorimpl = Result.m1935constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1940isFailureimpl(m1935constructorimpl)) {
            m1935constructorimpl = null;
        }
        Integer num = (Integer) m1935constructorimpl;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 2097152;
    }
}
