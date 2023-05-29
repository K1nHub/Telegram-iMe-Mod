package p034j$.util;

import java.util.Iterator;
import java.util.Objects;
import p034j$.util.InterfaceC2727o;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.I */
/* loaded from: classes2.dex */
public abstract class AbstractC2656I {

    /* renamed from: a */
    private static final InterfaceC2732s f562a = new C2650D();

    /* renamed from: b */
    private static final InterfaceC2732s.InterfaceC2734b f563b = new C2648B();

    /* renamed from: c */
    private static final InterfaceC2732s.InterfaceC2735c f564c = new C2649C();

    /* renamed from: d */
    private static final InterfaceC2732s.InterfaceC2733a f565d = new C2647A();

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
    public static InterfaceC2732s.InterfaceC2733a m625b() {
        return f565d;
    }

    /* renamed from: c */
    public static InterfaceC2732s.InterfaceC2734b m624c() {
        return f563b;
    }

    /* renamed from: d */
    public static InterfaceC2732s.InterfaceC2735c m623d() {
        return f564c;
    }

    /* renamed from: e */
    public static InterfaceC2732s m622e() {
        return f562a;
    }

    /* renamed from: f */
    public static InterfaceC2725m m621f(InterfaceC2732s.InterfaceC2733a interfaceC2733a) {
        Objects.requireNonNull(interfaceC2733a);
        return new C3043x(interfaceC2733a);
    }

    /* renamed from: g */
    public static InterfaceC2727o.InterfaceC2728a m620g(InterfaceC2732s.InterfaceC2734b interfaceC2734b) {
        Objects.requireNonNull(interfaceC2734b);
        return new C3041v(interfaceC2734b);
    }

    /* renamed from: h */
    public static InterfaceC2730q m619h(InterfaceC2732s.InterfaceC2735c interfaceC2735c) {
        Objects.requireNonNull(interfaceC2735c);
        return new C3042w(interfaceC2735c);
    }

    /* renamed from: i */
    public static Iterator m618i(InterfaceC2732s interfaceC2732s) {
        Objects.requireNonNull(interfaceC2732s);
        return new C3040u(interfaceC2732s);
    }

    /* renamed from: j */
    public static InterfaceC2732s.InterfaceC2733a m617j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m626a(dArr.length, i, i2);
        return new C3045z(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static InterfaceC2732s.InterfaceC2734b m616k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m626a(iArr.length, i, i2);
        return new C2653F(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static InterfaceC2732s.InterfaceC2735c m615l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m626a(jArr.length, i, i2);
        return new C2655H(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static InterfaceC2732s m614m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m626a(objArr.length, i, i2);
        return new C3044y(objArr, i, i2, i3);
    }
}
