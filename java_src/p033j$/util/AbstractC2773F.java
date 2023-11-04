package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2846n;
import p033j$.util.Spliterator;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
public abstract class AbstractC2773F {

    /* renamed from: a */
    private static final Spliterator f691a = new C2767A();

    /* renamed from: b */
    private static final Spliterator.InterfaceC2777b f692b = new C3161y();

    /* renamed from: c */
    private static final Spliterator.InterfaceC2778c f693c = new C3162z();

    /* renamed from: d */
    private static final Spliterator.InterfaceC2776a f694d = new C3160x();

    /* renamed from: a */
    private static void m685a(int i, int i2, int i3) {
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
    public static Spliterator.InterfaceC2776a m684b() {
        return f694d;
    }

    /* renamed from: c */
    public static Spliterator.InterfaceC2777b m683c() {
        return f692b;
    }

    /* renamed from: d */
    public static Spliterator.InterfaceC2778c m682d() {
        return f693c;
    }

    /* renamed from: e */
    public static Spliterator m681e() {
        return f691a;
    }

    /* renamed from: f */
    public static InterfaceC2844l m680f(Spliterator.InterfaceC2776a interfaceC2776a) {
        Objects.requireNonNull(interfaceC2776a);
        return new C3157u(interfaceC2776a);
    }

    /* renamed from: g */
    public static InterfaceC2846n.InterfaceC2847a m679g(Spliterator.InterfaceC2777b interfaceC2777b) {
        Objects.requireNonNull(interfaceC2777b);
        return new C2852s(interfaceC2777b);
    }

    /* renamed from: h */
    public static InterfaceC2849p m678h(Spliterator.InterfaceC2778c interfaceC2778c) {
        Objects.requireNonNull(interfaceC2778c);
        return new C3156t(interfaceC2778c);
    }

    /* renamed from: i */
    public static Iterator m677i(Spliterator spliterator) {
        Objects.requireNonNull(spliterator);
        return new C2851r(spliterator);
    }

    /* renamed from: j */
    public static Spliterator.InterfaceC2776a m676j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m685a(dArr.length, i, i2);
        return new C3159w(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static Spliterator.InterfaceC2777b m675k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m685a(iArr.length, i, i2);
        return new C2769C(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static Spliterator.InterfaceC2778c m674l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m685a(jArr.length, i, i2);
        return new C2772E(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static Spliterator m673m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m685a(objArr.length, i, i2);
        return new C3158v(objArr, i, i2, i3);
    }
}
