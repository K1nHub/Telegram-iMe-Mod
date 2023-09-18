package p033j$.util.stream;

import p033j$.util.C2869f;
import p033j$.util.C2897i;
import p033j$.util.InterfaceC2901m;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2873d;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2876g;
import p033j$.util.function.InterfaceC2877h;
import p033j$.util.function.InterfaceC2890u;
import p033j$.util.function.InterfaceC2894y;
import p033j$.wrappers.C3228D;
import p033j$.wrappers.C3232F;
import p033j$.wrappers.C3240J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC3028U extends InterfaceC3095g {
    /* renamed from: G */
    C2897i mo223G(InterfaceC2873d interfaceC2873d);

    /* renamed from: H */
    Object mo222H(InterfaceC2894y interfaceC2894y, InterfaceC2890u interfaceC2890u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo221K(double d, InterfaceC2873d interfaceC2873d);

    /* renamed from: M */
    Stream mo220M(InterfaceC2876g interfaceC2876g);

    /* renamed from: R */
    IntStream mo219R(C3232F c3232f);

    /* renamed from: Y */
    boolean mo218Y(C3228D c3228d);

    C2897i average();

    /* renamed from: b */
    InterfaceC3028U mo217b(InterfaceC2875f interfaceC2875f);

    Stream boxed();

    long count();

    InterfaceC3028U distinct();

    C2897i findAny();

    C2897i findFirst();

    /* renamed from: h0 */
    boolean mo216h0(C3228D c3228d);

    /* renamed from: i0 */
    boolean mo215i0(C3228D c3228d);

    @Override // p033j$.util.stream.InterfaceC3095g
    InterfaceC2901m iterator();

    /* renamed from: j */
    void mo214j(InterfaceC2875f interfaceC2875f);

    /* renamed from: l0 */
    void mo213l0(InterfaceC2875f interfaceC2875f);

    InterfaceC3028U limit(long j);

    C2897i max();

    C2897i min();

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    InterfaceC3028U parallel();

    /* renamed from: r */
    InterfaceC3028U mo211r(C3228D c3228d);

    @Override // p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    InterfaceC3028U sequential();

    InterfaceC3028U skip(long j);

    InterfaceC3028U sorted();

    @Override // p033j$.util.stream.InterfaceC3095g
    InterfaceC2908s.InterfaceC2909a spliterator();

    double sum();

    C2869f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC3028U mo210w(InterfaceC2876g interfaceC2876g);

    /* renamed from: x */
    InterfaceC3085e1 mo209x(InterfaceC2877h interfaceC2877h);

    /* renamed from: y */
    InterfaceC3028U mo208y(C3240J c3240j);
}
