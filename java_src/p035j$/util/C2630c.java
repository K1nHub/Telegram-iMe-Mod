package p035j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p035j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2630c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f572a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f573b;

    /* renamed from: c */
    public final /* synthetic */ Object f574c;

    public /* synthetic */ C2630c(Comparator comparator, Function function) {
        this.f573b = comparator;
        this.f574c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f572a) {
            case 0:
                Comparator comparator = this.f573b;
                Comparator comparator2 = (Comparator) this.f574c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f573b;
                Function function = (Function) this.f574c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2630c(Comparator comparator, Comparator comparator2) {
        this.f573b = comparator;
        this.f574c = comparator2;
    }
}
