package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2843n;
import p033j$.util.Spliterator;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
public abstract class AbstractC2770F {

    /* renamed from: a */
    private static final Spliterator f691a = new C2764A();

    /* renamed from: b */
    private static final Spliterator.InterfaceC2774b f692b = new C3158y();

    /* renamed from: c */
    private static final Spliterator.InterfaceC2775c f693c = new C3159z();

    /* renamed from: d */
    private static final Spliterator.InterfaceC2773a f694d = new C3157x();

    /* renamed from: a */
    private static void m685a(int i, int i2, int i3) {
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
    public static Spliterator.InterfaceC2773a m684b() {
        return f694d;
    }

    /* renamed from: c */
    public static Spliterator.InterfaceC2774b m683c() {
        return f692b;
    }

    /* renamed from: d */
    public static Spliterator.InterfaceC2775c m682d() {
        return f693c;
    }

    /* renamed from: e */
    public static Spliterator m681e() {
        return f691a;
    }

    /* renamed from: f */
    public static InterfaceC2841l m680f(Spliterator.InterfaceC2773a interfaceC2773a) {
        Objects.requireNonNull(interfaceC2773a);
        return new C3154u(interfaceC2773a);
    }

    /* renamed from: g */
    public static InterfaceC2843n.InterfaceC2844a m679g(Spliterator.InterfaceC2774b interfaceC2774b) {
        Objects.requireNonNull(interfaceC2774b);
        return new C2849s(interfaceC2774b);
    }

    /* renamed from: h */
    public static InterfaceC2846p m678h(Spliterator.InterfaceC2775c interfaceC2775c) {
        Objects.requireNonNull(interfaceC2775c);
        return new C3153t(interfaceC2775c);
    }

    /* renamed from: i */
    public static Iterator m677i(Spliterator spliterator) {
        Objects.requireNonNull(spliterator);
        return new C2848r(spliterator);
    }

    /* renamed from: j */
    public static Spliterator.InterfaceC2773a m676j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m685a(dArr.length, i, i2);
        return new C3156w(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static Spliterator.InterfaceC2774b m675k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m685a(iArr.length, i, i2);
        return new C2766C(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static Spliterator.InterfaceC2775c m674l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m685a(jArr.length, i, i2);
        return new C2769E(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static Spliterator m673m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m685a(objArr.length, i, i2);
        return new C3155v(objArr, i, i2, i3);
    }
}
