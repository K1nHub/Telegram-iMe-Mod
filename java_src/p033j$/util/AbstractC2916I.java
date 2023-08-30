package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2987o;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2916I {

    /* renamed from: a */
    private static final InterfaceC2992s f657a = new C2910D();

    /* renamed from: b */
    private static final InterfaceC2992s.InterfaceC2994b f658b = new C2908B();

    /* renamed from: c */
    private static final InterfaceC2992s.InterfaceC2995c f659c = new C2909C();

    /* renamed from: d */
    private static final InterfaceC2992s.InterfaceC2993a f660d = new C2907A();

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
    public static InterfaceC2992s.InterfaceC2993a m643b() {
        return f660d;
    }

    /* renamed from: c */
    public static InterfaceC2992s.InterfaceC2994b m642c() {
        return f658b;
    }

    /* renamed from: d */
    public static InterfaceC2992s.InterfaceC2995c m641d() {
        return f659c;
    }

    /* renamed from: e */
    public static InterfaceC2992s m640e() {
        return f657a;
    }

    /* renamed from: f */
    public static InterfaceC2985m m639f(InterfaceC2992s.InterfaceC2993a interfaceC2993a) {
        Objects.requireNonNull(interfaceC2993a);
        return new C3303x(interfaceC2993a);
    }

    /* renamed from: g */
    public static InterfaceC2987o.InterfaceC2988a m638g(InterfaceC2992s.InterfaceC2994b interfaceC2994b) {
        Objects.requireNonNull(interfaceC2994b);
        return new C3301v(interfaceC2994b);
    }

    /* renamed from: h */
    public static InterfaceC2990q m637h(InterfaceC2992s.InterfaceC2995c interfaceC2995c) {
        Objects.requireNonNull(interfaceC2995c);
        return new C3302w(interfaceC2995c);
    }

    /* renamed from: i */
    public static Iterator m636i(InterfaceC2992s interfaceC2992s) {
        Objects.requireNonNull(interfaceC2992s);
        return new C3300u(interfaceC2992s);
    }

    /* renamed from: j */
    public static InterfaceC2992s.InterfaceC2993a m635j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m644a(dArr.length, i, i2);
        return new C3305z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2992s.InterfaceC2994b m634k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m644a(iArr.length, i, i2);
        return new C2913F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2992s.InterfaceC2995c m633l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m644a(jArr.length, i, i2);
        return new C2915H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2992s m632m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m644a(objArr.length, i, i2);
        return new C3304y(objArr, i, i2, i3);
    }
}
