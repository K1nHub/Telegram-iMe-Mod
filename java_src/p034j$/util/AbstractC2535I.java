package p034j$.util;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.InterfaceC2606o;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2535I {

    /* renamed from: a */
    private static final InterfaceC2611s f558a = new C2529D();

    /* renamed from: b */
    private static final InterfaceC2611s.InterfaceC2613b f559b = new C2527B();

    /* renamed from: c */
    private static final InterfaceC2611s.InterfaceC2614c f560c = new C2528C();

    /* renamed from: d */
    private static final InterfaceC2611s.InterfaceC2612a f561d = new C2526A();

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
    public static InterfaceC2611s.InterfaceC2612a m641b() {
        return f561d;
    }

    /* renamed from: c */
    public static InterfaceC2611s.InterfaceC2613b m640c() {
        return f559b;
    }

    /* renamed from: d */
    public static InterfaceC2611s.InterfaceC2614c m639d() {
        return f560c;
    }

    /* renamed from: e */
    public static InterfaceC2611s m638e() {
        return f558a;
    }

    /* renamed from: f */
    public static InterfaceC2604m m637f(InterfaceC2611s.InterfaceC2612a interfaceC2612a) {
        Objects.requireNonNull(interfaceC2612a);
        return new C2922x(interfaceC2612a);
    }

    /* renamed from: g */
    public static InterfaceC2606o.InterfaceC2607a m636g(InterfaceC2611s.InterfaceC2613b interfaceC2613b) {
        Objects.requireNonNull(interfaceC2613b);
        return new C2920v(interfaceC2613b);
    }

    /* renamed from: h */
    public static InterfaceC2609q m635h(InterfaceC2611s.InterfaceC2614c interfaceC2614c) {
        Objects.requireNonNull(interfaceC2614c);
        return new C2921w(interfaceC2614c);
    }

    /* renamed from: i */
    public static Iterator m634i(InterfaceC2611s interfaceC2611s) {
        Objects.requireNonNull(interfaceC2611s);
        return new C2919u(interfaceC2611s);
    }

    /* renamed from: j */
    public static InterfaceC2611s.InterfaceC2612a m633j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m642a(dArr.length, i, i2);
        return new C2924z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2611s.InterfaceC2613b m632k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m642a(iArr.length, i, i2);
        return new C2532F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2611s.InterfaceC2614c m631l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m642a(jArr.length, i, i2);
        return new C2534H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2611s m630m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m642a(objArr.length, i, i2);
        return new C2923y(objArr, i, i2, i3);
    }
}
