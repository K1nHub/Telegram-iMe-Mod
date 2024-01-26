package p033j$.util;

import java.util.Iterator;
import java.util.Objects;
import p033j$.util.InterfaceC2841n;
import p033j$.util.Spliterator;
/* renamed from: j$.util.F */
/* loaded from: classes2.dex */
public abstract class AbstractC2768F {

    /* renamed from: a */
    private static final Spliterator f691a = new C2762A();

    /* renamed from: b */
    private static final Spliterator.InterfaceC2772b f692b = new C3156y();

    /* renamed from: c */
    private static final Spliterator.InterfaceC2773c f693c = new C3157z();

    /* renamed from: d */
    private static final Spliterator.InterfaceC2771a f694d = new C3155x();

    /* renamed from: a */
    private static void m688a(int i, int i2, int i3) {
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
    public static Spliterator.InterfaceC2771a m687b() {
        return f694d;
    }

    /* renamed from: c */
    public static Spliterator.InterfaceC2772b m686c() {
        return f692b;
    }

    /* renamed from: d */
    public static Spliterator.InterfaceC2773c m685d() {
        return f693c;
    }

    /* renamed from: e */
    public static Spliterator m684e() {
        return f691a;
    }

    /* renamed from: f */
    public static InterfaceC2839l m683f(Spliterator.InterfaceC2771a interfaceC2771a) {
        Objects.requireNonNull(interfaceC2771a);
        return new C3152u(interfaceC2771a);
    }

    /* renamed from: g */
    public static InterfaceC2841n.InterfaceC2842a m682g(Spliterator.InterfaceC2772b interfaceC2772b) {
        Objects.requireNonNull(interfaceC2772b);
        return new C2847s(interfaceC2772b);
    }

    /* renamed from: h */
    public static InterfaceC2844p m681h(Spliterator.InterfaceC2773c interfaceC2773c) {
        Objects.requireNonNull(interfaceC2773c);
        return new C3151t(interfaceC2773c);
    }

    /* renamed from: i */
    public static Iterator m680i(Spliterator spliterator) {
        Objects.requireNonNull(spliterator);
        return new C2846r(spliterator);
    }

    /* renamed from: j */
    public static Spliterator.InterfaceC2771a m679j(double[] dArr, int i, int i2, int i3) {
        Objects.requireNonNull(dArr);
        m688a(dArr.length, i, i2);
        return new C3154w(dArr, i, i2, i3);
    }

    /* renamed from: k */
    public static Spliterator.InterfaceC2772b m678k(int[] iArr, int i, int i2, int i3) {
        Objects.requireNonNull(iArr);
        m688a(iArr.length, i, i2);
        return new C2764C(iArr, i, i2, i3);
    }

    /* renamed from: l */
    public static Spliterator.InterfaceC2773c m677l(long[] jArr, int i, int i2, int i3) {
        Objects.requireNonNull(jArr);
        m688a(jArr.length, i, i2);
        return new C2767E(jArr, i, i2, i3);
    }

    /* renamed from: m */
    public static Spliterator m676m(Object[] objArr, int i, int i2, int i3) {
        Objects.requireNonNull(objArr);
        m688a(objArr.length, i, i2);
        return new C3153v(objArr, i, i2, i3);
    }
}
