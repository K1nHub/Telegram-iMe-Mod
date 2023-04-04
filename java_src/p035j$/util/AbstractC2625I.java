package p035j$.util;

import java.util.Iterator;
import java.util.Objects;
import p035j$.util.InterfaceC2696o;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2625I {

    /* renamed from: a */
    private static final InterfaceC2701s f564a = new C2619D();

    /* renamed from: b */
    private static final InterfaceC2701s.InterfaceC2703b f565b = new C2617B();

    /* renamed from: c */
    private static final InterfaceC2701s.InterfaceC2704c f566c = new C2618C();

    /* renamed from: d */
    private static final InterfaceC2701s.InterfaceC2702a f567d = new C2616A();

    /* renamed from: a */
    private static void m636a(int i, int i2, int i3) {
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
    public static InterfaceC2701s.InterfaceC2702a m635b() {
        return f567d;
    }

    /* renamed from: c */
    public static InterfaceC2701s.InterfaceC2703b m634c() {
        return f565b;
    }

    /* renamed from: d */
    public static InterfaceC2701s.InterfaceC2704c m633d() {
        return f566c;
    }

    /* renamed from: e */
    public static InterfaceC2701s m632e() {
        return f564a;
    }

    /* renamed from: f */
    public static InterfaceC2694m m631f(InterfaceC2701s.InterfaceC2702a interfaceC2702a) {
        Objects.requireNonNull(interfaceC2702a);
        return new C3012x(interfaceC2702a);
    }

    /* renamed from: g */
    public static InterfaceC2696o.InterfaceC2697a m630g(InterfaceC2701s.InterfaceC2703b interfaceC2703b) {
        Objects.requireNonNull(interfaceC2703b);
        return new C3010v(interfaceC2703b);
    }

    /* renamed from: h */
    public static InterfaceC2699q m629h(InterfaceC2701s.InterfaceC2704c interfaceC2704c) {
        Objects.requireNonNull(interfaceC2704c);
        return new C3011w(interfaceC2704c);
    }

    /* renamed from: i */
    public static Iterator m628i(InterfaceC2701s interfaceC2701s) {
        Objects.requireNonNull(interfaceC2701s);
        return new C3009u(interfaceC2701s);
    }

    /* renamed from: j */
    public static InterfaceC2701s.InterfaceC2702a m627j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m636a(dArr.length, i, i2);
        return new C3014z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2701s.InterfaceC2703b m626k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m636a(iArr.length, i, i2);
        return new C2622F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2701s.InterfaceC2704c m625l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m636a(jArr.length, i, i2);
        return new C2624H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2701s m624m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m636a(objArr.length, i, i2);
        return new C3013y(objArr, i, i2, i3);
    }
}
