package p034j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p034j$.util.function.Function;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* renamed from: j$.util.d */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2686d implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f648a = 0;

    /* renamed from: b */
    public final /* synthetic */ Object f649b;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f648a) {
            case 0:
                Function function = (Function) this.f649b;
                return ((Comparable) function.apply(obj)).compareTo(function.apply(obj2));
            case 1:
                ToDoubleFunction toDoubleFunction = (ToDoubleFunction) this.f649b;
                return Double.compare(toDoubleFunction.applyAsDouble(obj), toDoubleFunction.applyAsDouble(obj2));
            case 2:
                ToIntFunction toIntFunction = (ToIntFunction) this.f649b;
                return Integer.compare(toIntFunction.applyAsInt(obj), toIntFunction.applyAsInt(obj2));
            default:
                ToLongFunction toLongFunction = (ToLongFunction) this.f649b;
                return Long.compare(toLongFunction.applyAsLong(obj), toLongFunction.applyAsLong(obj2));
        }
    }
}