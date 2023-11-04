package p033j$.util.stream;

import p033j$.util.C2813e;
import p033j$.util.C2839g;
import p033j$.util.C2840h;
import p033j$.util.InterfaceC2846n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2824j;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2838x;
import p033j$.wrappers.C3192S;
import p033j$.wrappers.C3194U;
import p033j$.wrappers.C3198Y;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3036g {
    /* renamed from: B */
    boolean mo331B(C3192S c3192s);

    /* renamed from: E */
    boolean mo330E(C3192S c3192s);

    /* renamed from: H */
    void mo329H(InterfaceC2826l interfaceC2826l);

    /* renamed from: I */
    Stream mo328I(IntFunction intFunction);

    /* renamed from: M */
    int mo327M(int i, InterfaceC2824j interfaceC2824j);

    /* renamed from: O */
    IntStream mo326O(IntFunction intFunction);

    /* renamed from: T */
    void mo325T(InterfaceC2826l interfaceC2826l);

    /* renamed from: Z */
    C2840h mo324Z(InterfaceC2824j interfaceC2824j);

    InterfaceC2969U asDoubleStream();

    InterfaceC3026e1 asLongStream();

    C2839g average();

    /* renamed from: b0 */
    IntStream mo323b0(InterfaceC2826l interfaceC2826l);

    Stream boxed();

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3026e1 mo322f(InterfaceC2827m interfaceC2827m);

    C2840h findAny();

    C2840h findFirst();

    /* renamed from: h */
    IntStream mo321h(C3192S c3192s);

    @Override // p033j$.util.stream.InterfaceC3036g
    InterfaceC2846n.InterfaceC2847a iterator();

    /* renamed from: j0 */
    Object mo320j0(InterfaceC2838x interfaceC2838x, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer);

    IntStream limit(long j);

    C2840h max();

    C2840h min();

    /* renamed from: p */
    IntStream mo319p(C3198Y c3198y);

    @Override // 
    IntStream parallel();

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3036g
    Spliterator.InterfaceC2777b spliterator();

    int sum();

    C2813e summaryStatistics();

    int[] toArray();

    /* renamed from: u */
    boolean mo318u(C3192S c3192s);

    /* renamed from: z */
    InterfaceC2969U mo317z(C3194U c3194u);
}
