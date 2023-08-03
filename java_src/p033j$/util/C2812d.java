package p033j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p033j$.util.function.Function;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* renamed from: j$.util.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2812d implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f733a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f734b;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f733a) {
            case 0:
                Function function = (Function) this.f734b;
                return ((Comparable) function.apply(obj)).compareTo(function.apply(obj2));
            case 1:
                ToDoubleFunction toDoubleFunction = (ToDoubleFunction) this.f734b;
                return Double.compare(toDoubleFunction.applyAsDouble(obj), toDoubleFunction.applyAsDouble(obj2));
            case 2:
                ToIntFunction toIntFunction = (ToIntFunction) this.f734b;
                return Integer.compare(toIntFunction.applyAsInt(obj), toIntFunction.applyAsInt(obj2));
            default:
                ToLongFunction toLongFunction = (ToLongFunction) this.f734b;
                return Long.compare(toLongFunction.applyAsLong(obj), toLongFunction.applyAsLong(obj2));
        }
    }
}
