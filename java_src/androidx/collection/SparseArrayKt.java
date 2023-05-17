package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SparseArray.kt */
/* loaded from: classes.dex */
public final class SparseArrayKt {
    public static final <T> Iterator<T> valueIterator(SparseArrayCompat<T> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return new SparseArrayKt$valueIterator$1(receiver$0);
    }
}
