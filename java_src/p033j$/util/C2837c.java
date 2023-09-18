package p033j$.util;

import java.io.Serializable;
import java.util.Comparator;
import p033j$.util.function.Function;
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2837c implements Comparator, Serializable {

    /* renamed from: a */
    public final /* synthetic */ int f656a = 1;

    /* renamed from: b */
    public final /* synthetic */ Comparator f657b;

    /* renamed from: c */
    public final /* synthetic */ Object f658c;

    public /* synthetic */ C2837c(Comparator comparator, Function function) {
        this.f657b = comparator;
        this.f658c = function;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f656a) {
            case 0:
                Comparator comparator = this.f657b;
                Comparator comparator2 = (Comparator) this.f658c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                Comparator comparator3 = this.f657b;
                Function function = (Function) this.f658c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }

    public /* synthetic */ C2837c(Comparator comparator, Comparator comparator2) {
        this.f657b = comparator;
        this.f658c = comparator2;
    }
}
