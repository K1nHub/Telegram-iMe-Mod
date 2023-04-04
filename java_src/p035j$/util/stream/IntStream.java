package p035j$.util.stream;

import p035j$.util.C2688g;
import p035j$.util.C2690i;
import p035j$.util.C2691j;
import p035j$.util.InterfaceC2696o;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2672j;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2676n;
import p035j$.util.function.InterfaceC2684v;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3049U;
import p035j$.wrappers.C3051W;
import p035j$.wrappers.C3056a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2888g {
    /* renamed from: A */
    InterfaceC2821U mo276A(C3051W c3051w);

    /* renamed from: C */
    boolean mo275C(C3049U c3049u);

    /* renamed from: F */
    boolean mo274F(C3049U c3049u);

    /* renamed from: I */
    void mo273I(InterfaceC2674l interfaceC2674l);

    /* renamed from: J */
    Stream mo272J(InterfaceC2675m interfaceC2675m);

    /* renamed from: N */
    int mo271N(int i, InterfaceC2672j interfaceC2672j);

    /* renamed from: P */
    IntStream mo270P(InterfaceC2675m interfaceC2675m);

    /* renamed from: U */
    void mo269U(InterfaceC2674l interfaceC2674l);

    /* renamed from: a0 */
    C2691j mo268a0(InterfaceC2672j interfaceC2672j);

    InterfaceC2821U asDoubleStream();

    InterfaceC2878e1 asLongStream();

    C2690i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo267c0(InterfaceC2674l interfaceC2674l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2878e1 mo266f(InterfaceC2676n interfaceC2676n);

    C2691j findAny();

    C2691j findFirst();

    /* renamed from: h */
    IntStream mo265h(C3049U c3049u);

    @Override // p035j$.util.stream.InterfaceC2888g
    InterfaceC2696o.InterfaceC2697a iterator();

    /* renamed from: k0 */
    Object mo264k0(InterfaceC2687y interfaceC2687y, InterfaceC2684v interfaceC2684v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2691j max();

    C2691j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo263q(C3056a0 c3056a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p035j$.util.stream.InterfaceC2888g
    InterfaceC2701s.InterfaceC2703b spliterator();

    int sum();

    C2688g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo262v(C3049U c3049u);
}
