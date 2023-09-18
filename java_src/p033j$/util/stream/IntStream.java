package p033j$.util.stream;

import p033j$.util.C2895g;
import p033j$.util.C2897i;
import p033j$.util.C2898j;
import p033j$.util.InterfaceC2903o;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2879j;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2883n;
import p033j$.util.function.InterfaceC2891v;
import p033j$.util.function.InterfaceC2894y;
import p033j$.wrappers.C3256U;
import p033j$.wrappers.C3258W;
import p033j$.wrappers.C3263a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3095g {
    /* renamed from: A */
    InterfaceC3028U mo285A(C3258W c3258w);

    /* renamed from: C */
    boolean mo284C(C3256U c3256u);

    /* renamed from: F */
    boolean mo283F(C3256U c3256u);

    /* renamed from: I */
    void mo282I(InterfaceC2881l interfaceC2881l);

    /* renamed from: J */
    Stream mo281J(InterfaceC2882m interfaceC2882m);

    /* renamed from: N */
    int mo280N(int i, InterfaceC2879j interfaceC2879j);

    /* renamed from: P */
    IntStream mo279P(InterfaceC2882m interfaceC2882m);

    /* renamed from: U */
    void mo278U(InterfaceC2881l interfaceC2881l);

    /* renamed from: a0 */
    C2898j mo277a0(InterfaceC2879j interfaceC2879j);

    InterfaceC3028U asDoubleStream();

    InterfaceC3085e1 asLongStream();

    C2897i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo276c0(InterfaceC2881l interfaceC2881l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3085e1 mo275f(InterfaceC2883n interfaceC2883n);

    C2898j findAny();

    C2898j findFirst();

    /* renamed from: h */
    IntStream mo274h(C3256U c3256u);

    @Override // p033j$.util.stream.InterfaceC3095g
    InterfaceC2903o.InterfaceC2904a iterator();

    /* renamed from: k0 */
    Object mo273k0(InterfaceC2894y interfaceC2894y, InterfaceC2891v interfaceC2891v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2898j max();

    C2898j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo272q(C3263a0 c3263a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3095g
    InterfaceC2908s.InterfaceC2910b spliterator();

    int sum();

    C2895g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo271v(C3256U c3256u);
}
