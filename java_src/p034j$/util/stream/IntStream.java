package p034j$.util.stream;

import p034j$.util.C2612g;
import p034j$.util.C2614i;
import p034j$.util.C2615j;
import p034j$.util.InterfaceC2620o;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2596j;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2600n;
import p034j$.util.function.InterfaceC2608v;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2973U;
import p034j$.wrappers.C2975W;
import p034j$.wrappers.C2980a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC2812g {
    /* renamed from: A */
    InterfaceC2745U mo281A(C2975W c2975w);

    /* renamed from: C */
    boolean mo280C(C2973U c2973u);

    /* renamed from: F */
    boolean mo279F(C2973U c2973u);

    /* renamed from: I */
    void mo278I(InterfaceC2598l interfaceC2598l);

    /* renamed from: J */
    Stream mo277J(InterfaceC2599m interfaceC2599m);

    /* renamed from: N */
    int mo276N(int i, InterfaceC2596j interfaceC2596j);

    /* renamed from: P */
    IntStream mo275P(InterfaceC2599m interfaceC2599m);

    /* renamed from: U */
    void mo274U(InterfaceC2598l interfaceC2598l);

    /* renamed from: a0 */
    C2615j mo273a0(InterfaceC2596j interfaceC2596j);

    InterfaceC2745U asDoubleStream();

    InterfaceC2802e1 asLongStream();

    C2614i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo272c0(InterfaceC2598l interfaceC2598l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC2802e1 mo271f(InterfaceC2600n interfaceC2600n);

    C2615j findAny();

    C2615j findFirst();

    /* renamed from: h */
    IntStream mo270h(C2973U c2973u);

    @Override // p034j$.util.stream.InterfaceC2812g
    InterfaceC2620o.InterfaceC2621a iterator();

    /* renamed from: k0 */
    Object mo269k0(InterfaceC2611y interfaceC2611y, InterfaceC2608v interfaceC2608v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2615j max();

    C2615j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo268q(C2980a0 c2980a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p034j$.util.stream.InterfaceC2812g
    InterfaceC2625s.InterfaceC2627b spliterator();

    int sum();

    C2612g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo267v(C2973U c2973u);
}
