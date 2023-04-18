package p034j$.util;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.InterfaceC2683o;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2612I {

    /* renamed from: a */
    private static final InterfaceC2688s f559a = new C2606D();

    /* renamed from: b */
    private static final InterfaceC2688s.InterfaceC2690b f560b = new C2604B();

    /* renamed from: c */
    private static final InterfaceC2688s.InterfaceC2691c f561c = new C2605C();

    /* renamed from: d */
    private static final InterfaceC2688s.InterfaceC2689a f562d = new C2603A();

    /* renamed from: a */
    private static void m622a(int i, int i2, int i3) {
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
    public static InterfaceC2688s.InterfaceC2689a m621b() {
        return f562d;
    }

    /* renamed from: c */
    public static InterfaceC2688s.InterfaceC2690b m620c() {
        return f560b;
    }

    /* renamed from: d */
    public static InterfaceC2688s.InterfaceC2691c m619d() {
        return f561c;
    }

    /* renamed from: e */
    public static InterfaceC2688s m618e() {
        return f559a;
    }

    /* renamed from: f */
    public static InterfaceC2681m m617f(InterfaceC2688s.InterfaceC2689a interfaceC2689a) {
        Objects.requireNonNull(interfaceC2689a);
        return new C2999x(interfaceC2689a);
    }

    /* renamed from: g */
    public static InterfaceC2683o.InterfaceC2684a m616g(InterfaceC2688s.InterfaceC2690b interfaceC2690b) {
        Objects.requireNonNull(interfaceC2690b);
        return new C2997v(interfaceC2690b);
    }

    /* renamed from: h */
    public static InterfaceC2686q m615h(InterfaceC2688s.InterfaceC2691c interfaceC2691c) {
        Objects.requireNonNull(interfaceC2691c);
        return new C2998w(interfaceC2691c);
    }

    /* renamed from: i */
    public static Iterator m614i(InterfaceC2688s interfaceC2688s) {
        Objects.requireNonNull(interfaceC2688s);
        return new C2996u(interfaceC2688s);
    }

    /* renamed from: j */
    public static InterfaceC2688s.InterfaceC2689a m613j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m622a(dArr.length, i, i2);
        return new C3001z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2688s.InterfaceC2690b m612k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m622a(iArr.length, i, i2);
        return new C2609F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2688s.InterfaceC2691c m611l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m622a(jArr.length, i, i2);
        return new C2611H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2688s m610m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m622a(objArr.length, i, i2);
        return new C3000y(objArr, i, i2, i3);
    }
}
