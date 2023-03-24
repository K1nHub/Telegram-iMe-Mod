package p034j$.util;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.InterfaceC2620o;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2549I {

    /* renamed from: a */
    private static final InterfaceC2625s f559a = new C2543D();

    /* renamed from: b */
    private static final InterfaceC2625s.InterfaceC2627b f560b = new C2541B();

    /* renamed from: c */
    private static final InterfaceC2625s.InterfaceC2628c f561c = new C2542C();

    /* renamed from: d */
    private static final InterfaceC2625s.InterfaceC2626a f562d = new C2540A();

    /* renamed from: a */
    private static void m641a(int i, int i2, int i3) {
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
    public static InterfaceC2625s.InterfaceC2626a m640b() {
        return f562d;
    }

    /* renamed from: c */
    public static InterfaceC2625s.InterfaceC2627b m639c() {
        return f560b;
    }

    /* renamed from: d */
    public static InterfaceC2625s.InterfaceC2628c m638d() {
        return f561c;
    }

    /* renamed from: e */
    public static InterfaceC2625s m637e() {
        return f559a;
    }

    /* renamed from: f */
    public static InterfaceC2618m m636f(InterfaceC2625s.InterfaceC2626a interfaceC2626a) {
        Objects.requireNonNull(interfaceC2626a);
        return new C2936x(interfaceC2626a);
    }

    /* renamed from: g */
    public static InterfaceC2620o.InterfaceC2621a m635g(InterfaceC2625s.InterfaceC2627b interfaceC2627b) {
        Objects.requireNonNull(interfaceC2627b);
        return new C2934v(interfaceC2627b);
    }

    /* renamed from: h */
    public static InterfaceC2623q m634h(InterfaceC2625s.InterfaceC2628c interfaceC2628c) {
        Objects.requireNonNull(interfaceC2628c);
        return new C2935w(interfaceC2628c);
    }

    /* renamed from: i */
    public static Iterator m633i(InterfaceC2625s interfaceC2625s) {
        Objects.requireNonNull(interfaceC2625s);
        return new C2933u(interfaceC2625s);
    }

    /* renamed from: j */
    public static InterfaceC2625s.InterfaceC2626a m632j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m641a(dArr.length, i, i2);
        return new C2938z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2625s.InterfaceC2627b m631k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m641a(iArr.length, i, i2);
        return new C2546F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2625s.InterfaceC2628c m630l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m641a(jArr.length, i, i2);
        return new C2548H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2625s m629m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m641a(objArr.length, i, i2);
        return new C2937y(objArr, i, i2, i3);
    }
}
