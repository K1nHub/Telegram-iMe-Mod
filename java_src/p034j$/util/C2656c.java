package p034j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p034j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2656c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f570a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f571b;

    /* renamed from: c */
    public final /* synthetic */ Object f572c;

    public /* synthetic */ C2656c(Comparator comparator, Function function) {
        this.f571b = comparator;
        this.f572c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f570a) {
            case 0:
                Comparator comparator = this.f571b;
                Comparator comparator2 = (Comparator) this.f572c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f571b;
                Function function = (Function) this.f572c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2656c(Comparator comparator, Comparator comparator2) {
        this.f571b = comparator;
        this.f572c = comparator2;
    }
}
