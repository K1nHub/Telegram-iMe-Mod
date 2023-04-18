package p034j$.util.stream;

import p034j$.util.C2675g;
import p034j$.util.C2677i;
import p034j$.util.C2678j;
import p034j$.util.InterfaceC2683o;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2659j;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2663n;
import p034j$.util.function.InterfaceC2671v;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3036U;
import p034j$.wrappers.C3038W;
import p034j$.wrappers.C3043a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2875g {
    /* renamed from: A */
    InterfaceC2808U mo262A(C3038W c3038w);

    /* renamed from: C */
    boolean mo261C(C3036U c3036u);

    /* renamed from: F */
    boolean mo260F(C3036U c3036u);

    /* renamed from: I */
    void mo259I(InterfaceC2661l interfaceC2661l);

    /* renamed from: J */
    Stream mo258J(InterfaceC2662m interfaceC2662m);

    /* renamed from: N */
    int mo257N(int i, InterfaceC2659j interfaceC2659j);

    /* renamed from: P */
    IntStream mo256P(InterfaceC2662m interfaceC2662m);

    /* renamed from: U */
    void mo255U(InterfaceC2661l interfaceC2661l);

    /* renamed from: a0 */
    C2678j mo254a0(InterfaceC2659j interfaceC2659j);

    InterfaceC2808U asDoubleStream();

    InterfaceC2865e1 asLongStream();

    C2677i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo253c0(InterfaceC2661l interfaceC2661l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2865e1 mo252f(InterfaceC2663n interfaceC2663n);

    C2678j findAny();

    C2678j findFirst();

    /* renamed from: h */
    IntStream mo251h(C3036U c3036u);

    @Override // p034j$.util.stream.InterfaceC2875g
    InterfaceC2683o.InterfaceC2684a iterator();

    /* renamed from: k0 */
    Object mo250k0(InterfaceC2674y interfaceC2674y, InterfaceC2671v interfaceC2671v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2678j max();

    C2678j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo249q(C3043a0 c3043a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p034j$.util.stream.InterfaceC2875g
    InterfaceC2688s.InterfaceC2690b spliterator();

    int sum();

    C2675g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo248v(C3036U c3036u);
}
