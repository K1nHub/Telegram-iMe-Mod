package kotlinx.serialization.json.internal;

import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ArrayPools.kt */
/* loaded from: classes4.dex */
public class CharArrayPoolBase {
    private final ArrayDeque<char[]> arrays = new ArrayDeque<>();
    private int charsTotal;

    /* JADX INFO: Access modifiers changed from: protected */
    public final char[] take(int i) {
        char[] removeLastOrNull;
        synchronized (this) {
            removeLastOrNull = this.arrays.removeLastOrNull();
            if (removeLastOrNull != null) {
                this.charsTotal -= removeLastOrNull.length;
            } else {
                removeLastOrNull = null;
            }
        }
        return removeLastOrNull == null ? new char[i] : removeLastOrNull;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void releaseImpl(char[] array) {
        int i;
        Intrinsics.checkNotNullParameter(array, "array");
        synchronized (this) {
            int length = this.charsTotal + array.length;
            i = ArrayPoolsKt.MAX_CHARS_IN_POOL;
            if (length < i) {
                this.charsTotal += array.length;
                this.arrays.addLast(array);
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
