package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2842n;
import p033j$.util.Spliterator;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
public abstract class AbstractC2769F {

    /* renamed from: a */
    private static final Spliterator f691a = new C2763A();

    /* renamed from: b */
    private static final Spliterator.InterfaceC2773b f692b = new C3157y();

    /* renamed from: c */
    private static final Spliterator.InterfaceC2774c f693c = new C3158z();

    /* renamed from: d */
    private static final Spliterator.InterfaceC2772a f694d = new C3156x();

    /* renamed from: a */
    private static void m684a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    /* renamed from: b */
    public static Spliterator.InterfaceC2772a m683b() {
        return f694d;
    }

    /* renamed from: c */
    public static Spliterator.InterfaceC2773b m682c() {
        return f692b;
    }

    /* renamed from: d */
    public static Spliterator.InterfaceC2774c m681d() {
        return f693c;
    }

    /* renamed from: e */
    public static Spliterator m680e() {
        return f691a;
    }

    /* renamed from: f */
    public static InterfaceC2840l m679f(Spliterator.InterfaceC2772a interfaceC2772a) {
        Objects.requireNonNull(interfaceC2772a);
        return new C3153u(interfaceC2772a);
    }

    /* renamed from: g */
    public static InterfaceC2842n.InterfaceC2843a m678g(Spliterator.InterfaceC2773b interfaceC2773b) {
        Objects.requireNonNull(interfaceC2773b);
        return new C2848s(interfaceC2773b);
    }

    /* renamed from: h */
    public static InterfaceC2845p m677h(Spliterator.InterfaceC2774c interfaceC2774c) {
        Objects.requireNonNull(interfaceC2774c);
        return new C3152t(interfaceC2774c);
    }

    /* renamed from: i */
    public static Iterator m676i(Spliterator spliterator) {
        Objects.requireNonNull(spliterator);
        return new C2847r(spliterator);
    }

    /* renamed from: j */
    public static Spliterator.InterfaceC2772a m675j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m684a(dArr.length, i, i2);
        return new C3155w(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static Spliterator.InterfaceC2773b m674k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m684a(iArr.length, i, i2);
        return new C2765C(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static Spliterator.InterfaceC2774c m673l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m684a(jArr.length, i, i2);
        return new C2768E(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static Spliterator m672m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m684a(objArr.length, i, i2);
        return new C3154v(objArr, i, i2, i3);
    }
}
