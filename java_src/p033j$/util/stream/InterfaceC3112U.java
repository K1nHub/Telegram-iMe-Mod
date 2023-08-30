package p033j$.util.stream;

import p033j$.util.C2953f;
import p033j$.util.C2981i;
import p033j$.util.InterfaceC2985m;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2957d;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2960g;
import p033j$.util.function.InterfaceC2961h;
import p033j$.util.function.InterfaceC2974u;
import p033j$.util.function.InterfaceC2978y;
import p033j$.wrappers.C3312D;
import p033j$.wrappers.C3316F;
import p033j$.wrappers.C3324J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC3112U extends InterfaceC3179g {
    /* renamed from: G */
    C2981i mo223G(InterfaceC2957d interfaceC2957d);

    /* renamed from: H */
    Object mo222H(InterfaceC2978y interfaceC2978y, InterfaceC2974u interfaceC2974u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo221K(double d, InterfaceC2957d interfaceC2957d);

    /* renamed from: M */
    Stream mo220M(InterfaceC2960g interfaceC2960g);

    /* renamed from: R */
    IntStream mo219R(C3316F c3316f);

    /* renamed from: Y */
    boolean mo218Y(C3312D c3312d);

    C2981i average();

    /* renamed from: b */
    InterfaceC3112U mo217b(InterfaceC2959f interfaceC2959f);

    Stream boxed();

    long count();

    InterfaceC3112U distinct();

    C2981i findAny();

    C2981i findFirst();

    /* renamed from: h0 */
    boolean mo216h0(C3312D c3312d);

    /* renamed from: i0 */
    boolean mo215i0(C3312D c3312d);

    @Override // p033j$.util.stream.InterfaceC3179g
    InterfaceC2985m iterator();

    /* renamed from: j */
    void mo214j(InterfaceC2959f interfaceC2959f);

    /* renamed from: l0 */
    void mo213l0(InterfaceC2959f interfaceC2959f);

    InterfaceC3112U limit(long j);

    C2981i max();

    C2981i min();

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    InterfaceC3112U parallel();

    /* renamed from: r */
    InterfaceC3112U mo211r(C3312D c3312d);

    @Override // p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    InterfaceC3112U sequential();

    InterfaceC3112U skip(long j);

    InterfaceC3112U sorted();

    @Override // p033j$.util.stream.InterfaceC3179g
    InterfaceC2992s.InterfaceC2993a spliterator();

    double sum();

    C2953f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC3112U mo210w(InterfaceC2960g interfaceC2960g);

    /* renamed from: x */
    InterfaceC3169e1 mo209x(InterfaceC2961h interfaceC2961h);

    /* renamed from: y */
    InterfaceC3112U mo208y(C3324J c3324j);
}
