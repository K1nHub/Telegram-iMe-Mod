package p034j$.util.stream;

import p034j$.util.C2719g;
import p034j$.util.C2721i;
import p034j$.util.C2722j;
import p034j$.util.InterfaceC2727o;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2703j;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2707n;
import p034j$.util.function.InterfaceC2715v;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3080U;
import p034j$.wrappers.C3082W;
import p034j$.wrappers.C3087a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2919g {
    /* renamed from: A */
    InterfaceC2852U mo267A(C3082W c3082w);

    /* renamed from: C */
    boolean mo266C(C3080U c3080u);

    /* renamed from: F */
    boolean mo265F(C3080U c3080u);

    /* renamed from: I */
    void mo264I(InterfaceC2705l interfaceC2705l);

    /* renamed from: J */
    Stream mo263J(InterfaceC2706m interfaceC2706m);

    /* renamed from: N */
    int mo262N(int i, InterfaceC2703j interfaceC2703j);

    /* renamed from: P */
    IntStream mo261P(InterfaceC2706m interfaceC2706m);

    /* renamed from: U */
    void mo260U(InterfaceC2705l interfaceC2705l);

    /* renamed from: a0 */
    C2722j mo259a0(InterfaceC2703j interfaceC2703j);

    InterfaceC2852U asDoubleStream();

    InterfaceC2909e1 asLongStream();

    C2721i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo258c0(InterfaceC2705l interfaceC2705l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2909e1 mo257f(InterfaceC2707n interfaceC2707n);

    C2722j findAny();

    C2722j findFirst();

    /* renamed from: h */
    IntStream mo256h(C3080U c3080u);

    @Override // p034j$.util.stream.InterfaceC2919g
    InterfaceC2727o.InterfaceC2728a iterator();

    /* renamed from: k0 */
    Object mo255k0(InterfaceC2718y interfaceC2718y, InterfaceC2715v interfaceC2715v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2722j max();

    C2722j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo254q(C3087a0 c3087a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p034j$.util.stream.InterfaceC2919g
    InterfaceC2732s.InterfaceC2734b spliterator();

    int sum();

    C2719g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo253v(C3080U c3080u);
}
