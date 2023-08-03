package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2848o;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2777I {

    /* renamed from: a */
    private static final InterfaceC2853s f647a = new C2771D();

    /* renamed from: b */
    private static final InterfaceC2853s.InterfaceC2855b f648b = new C2769B();

    /* renamed from: c */
    private static final InterfaceC2853s.InterfaceC2856c f649c = new C2770C();

    /* renamed from: d */
    private static final InterfaceC2853s.InterfaceC2854a f650d = new C2768A();

    /* renamed from: a */
    private static void m644a(int i, int i2, int i3) {
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
    public static InterfaceC2853s.InterfaceC2854a m643b() {
        return f650d;
    }

    /* renamed from: c */
    public static InterfaceC2853s.InterfaceC2855b m642c() {
        return f648b;
    }

    /* renamed from: d */
    public static InterfaceC2853s.InterfaceC2856c m641d() {
        return f649c;
    }

    /* renamed from: e */
    public static InterfaceC2853s m640e() {
        return f647a;
    }

    /* renamed from: f */
    public static InterfaceC2846m m639f(InterfaceC2853s.InterfaceC2854a interfaceC2854a) {
        Objects.requireNonNull(interfaceC2854a);
        return new C3164x(interfaceC2854a);
    }

    /* renamed from: g */
    public static InterfaceC2848o.InterfaceC2849a m638g(InterfaceC2853s.InterfaceC2855b interfaceC2855b) {
        Objects.requireNonNull(interfaceC2855b);
        return new C3162v(interfaceC2855b);
    }

    /* renamed from: h */
    public static InterfaceC2851q m637h(InterfaceC2853s.InterfaceC2856c interfaceC2856c) {
        Objects.requireNonNull(interfaceC2856c);
        return new C3163w(interfaceC2856c);
    }

    /* renamed from: i */
    public static Iterator m636i(InterfaceC2853s interfaceC2853s) {
        Objects.requireNonNull(interfaceC2853s);
        return new C3161u(interfaceC2853s);
    }

    /* renamed from: j */
    public static InterfaceC2853s.InterfaceC2854a m635j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m644a(dArr.length, i, i2);
        return new C3166z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2853s.InterfaceC2855b m634k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m644a(iArr.length, i, i2);
        return new C2774F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2853s.InterfaceC2856c m633l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m644a(jArr.length, i, i2);
        return new C2776H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2853s m632m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m644a(objArr.length, i, i2);
        return new C3165y(objArr, i, i2, i3);
    }
}
