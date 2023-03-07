package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
/* compiled from: SlidingWindow.kt */
/* loaded from: classes4.dex */
public final class SlidingWindowKt {
    public static final void checkWindowSizeStep(int i, int i2) {
        String str;
        if (i > 0 && i2 > 0) {
            return;
        }
        if (i != i2) {
            str = "Both size " + i + " and step " + i2 + " must be greater than zero.";
        } else {
            str = "size " + i + " must be greater than zero.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    public static final <T> Iterator<List<T>> windowedIterator(Iterator<? extends T> iterator, int i, int i2, boolean z, boolean z2) {
        Iterator<List<T>> it;
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        if (iterator.hasNext()) {
            it = SequencesKt__SequenceBuilderKt.iterator(new SlidingWindowKt$windowedIterator$1(i, i2, iterator, z2, z, null));
            return it;
        }
        return EmptyIterator.INSTANCE;
    }
}
