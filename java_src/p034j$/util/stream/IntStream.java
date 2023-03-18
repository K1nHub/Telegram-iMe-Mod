package p034j$.util.stream;

import p034j$.util.C2598g;
import p034j$.util.C2600i;
import p034j$.util.C2601j;
import p034j$.util.InterfaceC2606o;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2582j;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2586n;
import p034j$.util.function.InterfaceC2594v;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2959U;
import p034j$.wrappers.C2961W;
import p034j$.wrappers.C2966a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2798g {
    /* renamed from: A */
    InterfaceC2731U mo282A(C2961W c2961w);

    /* renamed from: C */
    boolean mo281C(C2959U c2959u);

    /* renamed from: F */
    boolean mo280F(C2959U c2959u);

    /* renamed from: I */
    void mo279I(InterfaceC2584l interfaceC2584l);

    /* renamed from: J */
    Stream mo278J(InterfaceC2585m interfaceC2585m);

    /* renamed from: N */
    int mo277N(int i, InterfaceC2582j interfaceC2582j);

    /* renamed from: P */
    IntStream mo276P(InterfaceC2585m interfaceC2585m);

    /* renamed from: U */
    void mo275U(InterfaceC2584l interfaceC2584l);

    /* renamed from: a0 */
    C2601j mo274a0(InterfaceC2582j interfaceC2582j);

    InterfaceC2731U asDoubleStream();

    InterfaceC2788e1 asLongStream();

    C2600i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo273c0(InterfaceC2584l interfaceC2584l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2788e1 mo272f(InterfaceC2586n interfaceC2586n);

    C2601j findAny();

    C2601j findFirst();

    /* renamed from: h */
    IntStream mo271h(C2959U c2959u);

    @Override // p034j$.util.stream.InterfaceC2798g
    InterfaceC2606o.InterfaceC2607a iterator();

    /* renamed from: k0 */
    Object mo270k0(InterfaceC2597y interfaceC2597y, InterfaceC2594v interfaceC2594v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2601j max();

    C2601j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo269q(C2966a0 c2966a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p034j$.util.stream.InterfaceC2798g
    InterfaceC2611s.InterfaceC2613b spliterator();

    int sum();

    C2598g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo268v(C2959U c2959u);
}
