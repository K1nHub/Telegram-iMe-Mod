package kotlin.jvm.internal;

import kotlin.collections.BooleanIterator;
/* compiled from: ArrayIterators.kt */
/* loaded from: classes4.dex */
public final class ArrayIteratorsKt {
    public static final BooleanIterator iterator(boolean[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new ArrayBooleanIterator(array);
    }
}
