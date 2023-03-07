package p034j$.util.stream;

import p034j$.util.C2474g;
import p034j$.util.C2476i;
import p034j$.util.C2477j;
import p034j$.util.InterfaceC2482o;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2458j;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2462n;
import p034j$.util.function.InterfaceC2470v;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2835U;
import p034j$.wrappers.C2837W;
import p034j$.wrappers.C2842a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2674g {
    /* renamed from: A */
    InterfaceC2607U mo282A(C2837W c2837w);

    /* renamed from: C */
    boolean mo281C(C2835U c2835u);

    /* renamed from: F */
    boolean mo280F(C2835U c2835u);

    /* renamed from: I */
    void mo279I(InterfaceC2460l interfaceC2460l);

    /* renamed from: J */
    Stream mo278J(InterfaceC2461m interfaceC2461m);

    /* renamed from: N */
    int mo277N(int i, InterfaceC2458j interfaceC2458j);

    /* renamed from: P */
    IntStream mo276P(InterfaceC2461m interfaceC2461m);

    /* renamed from: U */
    void mo275U(InterfaceC2460l interfaceC2460l);

    /* renamed from: a0 */
    C2477j mo274a0(InterfaceC2458j interfaceC2458j);

    InterfaceC2607U asDoubleStream();

    InterfaceC2664e1 asLongStream();

    C2476i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo273c0(InterfaceC2460l interfaceC2460l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2664e1 mo272f(InterfaceC2462n interfaceC2462n);

    C2477j findAny();

    C2477j findFirst();

    /* renamed from: h */
    IntStream mo271h(C2835U c2835u);

    @Override // p034j$.util.stream.InterfaceC2674g
    InterfaceC2482o.InterfaceC2483a iterator();

    /* renamed from: k0 */
    Object mo270k0(InterfaceC2473y interfaceC2473y, InterfaceC2470v interfaceC2470v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2477j max();

    C2477j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo269q(C2842a0 c2842a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p034j$.util.stream.InterfaceC2674g
    InterfaceC2487s.InterfaceC2489b spliterator();

    int sum();

    C2474g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo268v(C2835U c2835u);
}
