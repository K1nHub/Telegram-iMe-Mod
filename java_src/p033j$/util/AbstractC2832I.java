package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2903o;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2832I {

    /* renamed from: a */
    private static final InterfaceC2908s f648a = new C2826D();

    /* renamed from: b */
    private static final InterfaceC2908s.InterfaceC2910b f649b = new C2824B();

    /* renamed from: c */
    private static final InterfaceC2908s.InterfaceC2911c f650c = new C2825C();

    /* renamed from: d */
    private static final InterfaceC2908s.InterfaceC2909a f651d = new C2823A();

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
    public static InterfaceC2908s.InterfaceC2909a m643b() {
        return f651d;
    }

    /* renamed from: c */
    public static InterfaceC2908s.InterfaceC2910b m642c() {
        return f649b;
    }

    /* renamed from: d */
    public static InterfaceC2908s.InterfaceC2911c m641d() {
        return f650c;
    }

    /* renamed from: e */
    public static InterfaceC2908s m640e() {
        return f648a;
    }

    /* renamed from: f */
    public static InterfaceC2901m m639f(InterfaceC2908s.InterfaceC2909a interfaceC2909a) {
        Objects.requireNonNull(interfaceC2909a);
        return new C3219x(interfaceC2909a);
    }

    /* renamed from: g */
    public static InterfaceC2903o.InterfaceC2904a m638g(InterfaceC2908s.InterfaceC2910b interfaceC2910b) {
        Objects.requireNonNull(interfaceC2910b);
        return new C3217v(interfaceC2910b);
    }

    /* renamed from: h */
    public static InterfaceC2906q m637h(InterfaceC2908s.InterfaceC2911c interfaceC2911c) {
        Objects.requireNonNull(interfaceC2911c);
        return new C3218w(interfaceC2911c);
    }

    /* renamed from: i */
    public static Iterator m636i(InterfaceC2908s interfaceC2908s) {
        Objects.requireNonNull(interfaceC2908s);
        return new C3216u(interfaceC2908s);
    }

    /* renamed from: j */
    public static InterfaceC2908s.InterfaceC2909a m635j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m644a(dArr.length, i, i2);
        return new C3221z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2908s.InterfaceC2910b m634k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m644a(iArr.length, i, i2);
        return new C2829F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2908s.InterfaceC2911c m633l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m644a(jArr.length, i, i2);
        return new C2831H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2908s m632m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m644a(objArr.length, i, i2);
        return new C3220y(objArr, i, i2, i3);
    }
}
