package p033j$.util.stream;

import p033j$.util.C2814f;
import p033j$.util.C2839g;
import p033j$.util.C2841i;
import p033j$.util.InterfaceC2849p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2833s;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2838x;
import p033j$.wrappers.C3213g0;
import p033j$.wrappers.C3217i0;
import p033j$.wrappers.C3221k0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3026e1 extends InterfaceC3036g {
    /* renamed from: C */
    long mo257C(long j, InterfaceC2828n interfaceC2828n);

    /* renamed from: K */
    boolean mo256K(C3213g0 c3213g0);

    /* renamed from: N */
    InterfaceC2969U mo255N(C3217i0 c3217i0);

    /* renamed from: P */
    Stream mo254P(InterfaceC2831q interfaceC2831q);

    /* renamed from: R */
    boolean mo253R(C3213g0 c3213g0);

    /* renamed from: Y */
    void mo252Y(InterfaceC2830p interfaceC2830p);

    InterfaceC2969U asDoubleStream();

    C2839g average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo251d(InterfaceC2830p interfaceC2830p);

    /* renamed from: d0 */
    IntStream mo250d0(C3221k0 c3221k0);

    InterfaceC3026e1 distinct();

    /* renamed from: e0 */
    Object mo249e0(InterfaceC2838x interfaceC2838x, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer);

    C2841i findAny();

    C2841i findFirst();

    /* renamed from: g */
    C2841i mo248g(InterfaceC2828n interfaceC2828n);

    @Override // p033j$.util.stream.InterfaceC3036g
    InterfaceC2849p iterator();

    /* renamed from: k */
    boolean mo247k(C3213g0 c3213g0);

    InterfaceC3026e1 limit(long j);

    C2841i max();

    C2841i min();

    /* renamed from: o */
    InterfaceC3026e1 mo245o(InterfaceC2830p interfaceC2830p);

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    InterfaceC3026e1 parallel();

    /* renamed from: r */
    InterfaceC3026e1 mo244r(InterfaceC2831q interfaceC2831q);

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    InterfaceC3026e1 sequential();

    InterfaceC3026e1 skip(long j);

    InterfaceC3026e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3036g
    Spliterator.InterfaceC2778c spliterator();

    long sum();

    C2814f summaryStatistics();

    /* renamed from: t */
    InterfaceC3026e1 mo243t(C3213g0 c3213g0);

    long[] toArray();

    /* renamed from: y */
    InterfaceC3026e1 mo242y(InterfaceC2833s interfaceC2833s);
}
