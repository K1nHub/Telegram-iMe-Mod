package p034j$.util;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.InterfaceC2482o;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2411I {

    /* renamed from: a */
    private static final InterfaceC2487s f553a = new C2405D();

    /* renamed from: b */
    private static final InterfaceC2487s.InterfaceC2489b f554b = new C2403B();

    /* renamed from: c */
    private static final InterfaceC2487s.InterfaceC2490c f555c = new C2404C();

    /* renamed from: d */
    private static final InterfaceC2487s.InterfaceC2488a f556d = new C2402A();

    /* renamed from: a */
    private static void m642a(int i, int i2, int i3) {
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
    public static InterfaceC2487s.InterfaceC2488a m641b() {
        return f556d;
    }

    /* renamed from: c */
    public static InterfaceC2487s.InterfaceC2489b m640c() {
        return f554b;
    }

    /* renamed from: d */
    public static InterfaceC2487s.InterfaceC2490c m639d() {
        return f555c;
    }

    /* renamed from: e */
    public static InterfaceC2487s m638e() {
        return f553a;
    }

    /* renamed from: f */
    public static InterfaceC2480m m637f(InterfaceC2487s.InterfaceC2488a interfaceC2488a) {
        Objects.requireNonNull(interfaceC2488a);
        return new C2798x(interfaceC2488a);
    }

    /* renamed from: g */
    public static InterfaceC2482o.InterfaceC2483a m636g(InterfaceC2487s.InterfaceC2489b interfaceC2489b) {
        Objects.requireNonNull(interfaceC2489b);
        return new C2796v(interfaceC2489b);
    }

    /* renamed from: h */
    public static InterfaceC2485q m635h(InterfaceC2487s.InterfaceC2490c interfaceC2490c) {
        Objects.requireNonNull(interfaceC2490c);
        return new C2797w(interfaceC2490c);
    }

    /* renamed from: i */
    public static Iterator m634i(InterfaceC2487s interfaceC2487s) {
        Objects.requireNonNull(interfaceC2487s);
        return new C2795u(interfaceC2487s);
    }

    /* renamed from: j */
    public static InterfaceC2487s.InterfaceC2488a m633j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m642a(dArr.length, i, i2);
        return new C2800z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2487s.InterfaceC2489b m632k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m642a(iArr.length, i, i2);
        return new C2408F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2487s.InterfaceC2490c m631l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m642a(jArr.length, i, i2);
        return new C2410H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2487s m630m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m642a(objArr.length, i, i2);
        return new C2799y(objArr, i, i2, i3);
    }
}
