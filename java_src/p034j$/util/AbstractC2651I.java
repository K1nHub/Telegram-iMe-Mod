package p034j$.util;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.InterfaceC2722o;
import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2651I {

    /* renamed from: a */
    private static final InterfaceC2727s f562a = new C2645D();

    /* renamed from: b */
    private static final InterfaceC2727s.InterfaceC2729b f563b = new C2643B();

    /* renamed from: c */
    private static final InterfaceC2727s.InterfaceC2730c f564c = new C2644C();

    /* renamed from: d */
    private static final InterfaceC2727s.InterfaceC2728a f565d = new C2642A();

    /* renamed from: a */
    private static void m626a(int i, int i2, int i3) {
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
    public static InterfaceC2727s.InterfaceC2728a m625b() {
        return f565d;
    }

    /* renamed from: c */
    public static InterfaceC2727s.InterfaceC2729b m624c() {
        return f563b;
    }

    /* renamed from: d */
    public static InterfaceC2727s.InterfaceC2730c m623d() {
        return f564c;
    }

    /* renamed from: e */
    public static InterfaceC2727s m622e() {
        return f562a;
    }

    /* renamed from: f */
    public static InterfaceC2720m m621f(InterfaceC2727s.InterfaceC2728a interfaceC2728a) {
        Objects.requireNonNull(interfaceC2728a);
        return new C3038x(interfaceC2728a);
    }

    /* renamed from: g */
    public static InterfaceC2722o.InterfaceC2723a m620g(InterfaceC2727s.InterfaceC2729b interfaceC2729b) {
        Objects.requireNonNull(interfaceC2729b);
        return new C3036v(interfaceC2729b);
    }

    /* renamed from: h */
    public static InterfaceC2725q m619h(InterfaceC2727s.InterfaceC2730c interfaceC2730c) {
        Objects.requireNonNull(interfaceC2730c);
        return new C3037w(interfaceC2730c);
    }

    /* renamed from: i */
    public static Iterator m618i(InterfaceC2727s interfaceC2727s) {
        Objects.requireNonNull(interfaceC2727s);
        return new C3035u(interfaceC2727s);
    }

    /* renamed from: j */
    public static InterfaceC2727s.InterfaceC2728a m617j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m626a(dArr.length, i, i2);
        return new C3040z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2727s.InterfaceC2729b m616k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m626a(iArr.length, i, i2);
        return new C2648F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2727s.InterfaceC2730c m615l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m626a(jArr.length, i, i2);
        return new C2650H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2727s m614m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m626a(objArr.length, i, i2);
        return new C3039y(objArr, i, i2, i3);
    }
}
