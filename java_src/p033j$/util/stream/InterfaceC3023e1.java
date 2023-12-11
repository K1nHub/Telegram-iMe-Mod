package p033j$.util.stream;

import p033j$.util.C2811f;
import p033j$.util.C2836g;
import p033j$.util.C2838i;
import p033j$.util.InterfaceC2846p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2825n;
import p033j$.util.function.InterfaceC2827p;
import p033j$.util.function.InterfaceC2828q;
import p033j$.util.function.InterfaceC2830s;
import p033j$.util.function.InterfaceC2833v;
import p033j$.util.function.InterfaceC2835x;
import p033j$.wrappers.C3210g0;
import p033j$.wrappers.C3214i0;
import p033j$.wrappers.C3218k0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3023e1 extends InterfaceC3033g {
    /* renamed from: C */
    long mo257C(long j, InterfaceC2825n interfaceC2825n);

    /* renamed from: K */
    boolean mo256K(C3210g0 c3210g0);

    /* renamed from: N */
    InterfaceC2966U mo255N(C3214i0 c3214i0);

    /* renamed from: P */
    Stream mo254P(InterfaceC2828q interfaceC2828q);

    /* renamed from: R */
    boolean mo253R(C3210g0 c3210g0);

    /* renamed from: Y */
    void mo252Y(InterfaceC2827p interfaceC2827p);

    InterfaceC2966U asDoubleStream();

    C2836g average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo251d(InterfaceC2827p interfaceC2827p);

    /* renamed from: d0 */
    IntStream mo250d0(C3218k0 c3218k0);

    InterfaceC3023e1 distinct();

    /* renamed from: e0 */
    Object mo249e0(InterfaceC2835x interfaceC2835x, InterfaceC2833v interfaceC2833v, BiConsumer biConsumer);

    C2838i findAny();

    C2838i findFirst();

    /* renamed from: g */
    C2838i mo248g(InterfaceC2825n interfaceC2825n);

    @Override // p033j$.util.stream.InterfaceC3033g
    InterfaceC2846p iterator();

    /* renamed from: k */
    boolean mo247k(C3210g0 c3210g0);

    InterfaceC3023e1 limit(long j);

    C2838i max();

    C2838i min();

    /* renamed from: o */
    InterfaceC3023e1 mo245o(InterfaceC2827p interfaceC2827p);

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    InterfaceC3023e1 parallel();

    /* renamed from: r */
    InterfaceC3023e1 mo244r(InterfaceC2828q interfaceC2828q);

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    InterfaceC3023e1 sequential();

    InterfaceC3023e1 skip(long j);

    InterfaceC3023e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3033g
    Spliterator.InterfaceC2775c spliterator();

    long sum();

    C2811f summaryStatistics();

    /* renamed from: t */
    InterfaceC3023e1 mo243t(C3210g0 c3210g0);

    long[] toArray();

    /* renamed from: y */
    InterfaceC3023e1 mo242y(InterfaceC2830s interfaceC2830s);
}
