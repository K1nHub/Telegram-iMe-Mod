package p033j$.util.stream;

import p033j$.util.C2840g;
import p033j$.util.C2842i;
import p033j$.util.C2843j;
import p033j$.util.InterfaceC2848o;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3201U;
import p033j$.wrappers.C3203W;
import p033j$.wrappers.C3208a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3040g {
    /* renamed from: A */
    InterfaceC2973U mo285A(C3203W c3203w);

    /* renamed from: C */
    boolean mo284C(C3201U c3201u);

    /* renamed from: F */
    boolean mo283F(C3201U c3201u);

    /* renamed from: I */
    void mo282I(InterfaceC2826l interfaceC2826l);

    /* renamed from: J */
    Stream mo281J(InterfaceC2827m interfaceC2827m);

    /* renamed from: N */
    int mo280N(int i, InterfaceC2824j interfaceC2824j);

    /* renamed from: P */
    IntStream mo279P(InterfaceC2827m interfaceC2827m);

    /* renamed from: U */
    void mo278U(InterfaceC2826l interfaceC2826l);

    /* renamed from: a0 */
    C2843j mo277a0(InterfaceC2824j interfaceC2824j);

    InterfaceC2973U asDoubleStream();

    InterfaceC3030e1 asLongStream();

    C2842i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo276c0(InterfaceC2826l interfaceC2826l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3030e1 mo275f(InterfaceC2828n interfaceC2828n);

    C2843j findAny();

    C2843j findFirst();

    /* renamed from: h */
    IntStream mo274h(C3201U c3201u);

    @Override // p033j$.util.stream.InterfaceC3040g
    InterfaceC2848o.InterfaceC2849a iterator();

    /* renamed from: k0 */
    Object mo273k0(InterfaceC2839y interfaceC2839y, InterfaceC2836v interfaceC2836v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2843j max();

    C2843j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo272q(C3208a0 c3208a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3040g
    InterfaceC2853s.InterfaceC2855b spliterator();

    int sum();

    C2840g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo271v(C3201U c3201u);
}
