package p033j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p033j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2921c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f665a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f666b;

    /* renamed from: c */
    public final /* synthetic */ Object f667c;

    public /* synthetic */ C2921c(Comparator comparator, Function function) {
        this.f666b = comparator;
        this.f667c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f665a) {
            case 0:
                Comparator comparator = this.f666b;
                Comparator comparator2 = (Comparator) this.f667c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f666b;
                Function function = (Function) this.f667c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2921c(Comparator comparator, Comparator comparator2) {
        this.f666b = comparator;
        this.f667c = comparator2;
    }
}
