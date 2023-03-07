package p034j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p034j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2416c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f561a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f562b;

    /* renamed from: c */
    public final /* synthetic */ Object f563c;

    public /* synthetic */ C2416c(Comparator comparator, Function function) {
        this.f562b = comparator;
        this.f563c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f561a) {
            case 0:
                Comparator comparator = this.f562b;
                Comparator comparator2 = (Comparator) this.f563c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f562b;
                Function function = (Function) this.f563c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2416c(Comparator comparator, Comparator comparator2) {
        this.f562b = comparator;
        this.f563c = comparator2;
    }
}
