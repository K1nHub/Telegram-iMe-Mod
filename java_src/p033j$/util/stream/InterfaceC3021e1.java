package p033j$.util.stream;

import p033j$.util.C2809f;
import p033j$.util.C2834g;
import p033j$.util.C2836i;
import p033j$.util.InterfaceC2844p;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2823n;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2826q;
import p033j$.util.function.InterfaceC2828s;
import p033j$.util.function.InterfaceC2831v;
import p033j$.util.function.InterfaceC2833x;
import p033j$.wrappers.C3208g0;
import p033j$.wrappers.C3212i0;
import p033j$.wrappers.C3216k0;
/* renamed from: j$.util.stream.e1 */
/* loaded from: classes2.dex */
public interface InterfaceC3021e1 extends InterfaceC3031g {
    /* renamed from: C */
    long mo260C(long j, InterfaceC2823n interfaceC2823n);

    /* renamed from: K */
    boolean mo259K(C3208g0 c3208g0);

    /* renamed from: N */
    InterfaceC2964U mo258N(C3212i0 c3212i0);

    /* renamed from: P */
    Stream mo257P(InterfaceC2826q interfaceC2826q);

    /* renamed from: R */
    boolean mo256R(C3208g0 c3208g0);

    /* renamed from: Y */
    void mo255Y(InterfaceC2825p interfaceC2825p);

    InterfaceC2964U asDoubleStream();

    C2834g average();

    Stream boxed();

    long count();

    /* renamed from: d */
    void mo254d(InterfaceC2825p interfaceC2825p);

    /* renamed from: d0 */
    IntStream mo253d0(C3216k0 c3216k0);

    InterfaceC3021e1 distinct();

    /* renamed from: e0 */
    Object mo252e0(InterfaceC2833x interfaceC2833x, InterfaceC2831v interfaceC2831v, BiConsumer biConsumer);

    C2836i findAny();

    C2836i findFirst();

    /* renamed from: g */
    C2836i mo251g(InterfaceC2823n interfaceC2823n);

    @Override // p033j$.util.stream.InterfaceC3031g
    InterfaceC2844p iterator();

    /* renamed from: k */
    boolean mo250k(C3208g0 c3208g0);

    InterfaceC3021e1 limit(long j);

    C2836i max();

    C2836i min();

    /* renamed from: o */
    InterfaceC3021e1 mo248o(InterfaceC2825p interfaceC2825p);

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    InterfaceC3021e1 parallel();

    /* renamed from: r */
    InterfaceC3021e1 mo247r(InterfaceC2826q interfaceC2826q);

    @Override // p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    InterfaceC3021e1 sequential();

    InterfaceC3021e1 skip(long j);

    InterfaceC3021e1 sorted();

    @Override // p033j$.util.stream.InterfaceC3031g
    Spliterator.InterfaceC2773c spliterator();

    long sum();

    C2809f summaryStatistics();

    /* renamed from: t */
    InterfaceC3021e1 mo246t(C3208g0 c3208g0);

    long[] toArray();

    /* renamed from: y */
    InterfaceC3021e1 mo245y(InterfaceC2828s interfaceC2828s);
}
