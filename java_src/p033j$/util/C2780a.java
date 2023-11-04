package p033j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p033j$.util.function.Function;
/* renamed from: j$.util.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2780a implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f699a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f700b;

    /* renamed from: c */
    public final /* synthetic */ Object f701c;

    public /* synthetic */ C2780a(Comparator comparator, Function function) {
        this.f700b = comparator;
        this.f701c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f699a) {
            case 0:
                Comparator comparator = this.f700b;
                Comparator comparator2 = (Comparator) this.f701c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f700b;
                Function function = (Function) this.f701c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2780a(Comparator comparator, Comparator comparator2) {
        this.f700b = comparator;
        this.f701c = comparator2;
    }
}
