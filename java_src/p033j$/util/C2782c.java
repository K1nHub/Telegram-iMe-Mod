package p033j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p033j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2782c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f652a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f653b;

    /* renamed from: c */
    public final /* synthetic */ Object f654c;

    public /* synthetic */ C2782c(Comparator comparator, Function function) {
        this.f653b = comparator;
        this.f654c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f652a) {
            case 0:
                Comparator comparator = this.f653b;
                Comparator comparator2 = (Comparator) this.f654c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f653b;
                Function function = (Function) this.f654c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2782c(Comparator comparator, Comparator comparator2) {
        this.f653b = comparator;
        this.f654c = comparator2;
    }
}
