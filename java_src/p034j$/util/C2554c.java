package p034j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p034j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2554c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f567a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f568b;

    /* renamed from: c */
    public final /* synthetic */ Object f569c;

    public /* synthetic */ C2554c(Comparator comparator, Function function) {
        this.f568b = comparator;
        this.f569c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f567a) {
            case 0:
                Comparator comparator = this.f568b;
                Comparator comparator2 = (Comparator) this.f569c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f568b;
                Function function = (Function) this.f569c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2554c(Comparator comparator, Comparator comparator2) {
        this.f568b = comparator;
        this.f569c = comparator2;
    }
}
