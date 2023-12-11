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
        Object m1942constructorimpl;
        Integer intOrNull;
        try {
            Result.Companion companion = Result.Companion;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"kotlinx.ser…lization.json.pool.size\")");
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(property);
            m1942constructorimpl = Result.m1942constructorimpl(intOrNull);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1942constructorimpl = Result.m1942constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m1947isFailureimpl(m1942constructorimpl)) {
            m1942constructorimpl = null;
        }
        Integer num = (Integer) m1942constructorimpl;
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 2097152;
    }
}
