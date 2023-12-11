package p033j$.util.stream;

import p033j$.util.C2810e;
import p033j$.util.C2836g;
import p033j$.util.C2837h;
import p033j$.util.InterfaceC2843n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821j;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2824m;
import p033j$.util.function.InterfaceC2832u;
import p033j$.util.function.InterfaceC2835x;
import p033j$.wrappers.C3189S;
import p033j$.wrappers.C3191U;
import p033j$.wrappers.C3195Y;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3033g {
    /* renamed from: B */
    boolean mo331B(C3189S c3189s);

    /* renamed from: E */
    boolean mo330E(C3189S c3189s);

    /* renamed from: H */
    void mo329H(InterfaceC2823l interfaceC2823l);

    /* renamed from: I */
    Stream mo328I(IntFunction intFunction);

    /* renamed from: M */
    int mo327M(int i, InterfaceC2821j interfaceC2821j);

    /* renamed from: O */
    IntStream mo326O(IntFunction intFunction);

    /* renamed from: T */
    void mo325T(InterfaceC2823l interfaceC2823l);

    /* renamed from: Z */
    C2837h mo324Z(InterfaceC2821j interfaceC2821j);

    InterfaceC2966U asDoubleStream();

    InterfaceC3023e1 asLongStream();

    C2836g average();

    /* renamed from: b0 */
    IntStream mo323b0(InterfaceC2823l interfaceC2823l);

    Stream boxed();

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3023e1 mo322f(InterfaceC2824m interfaceC2824m);

    C2837h findAny();

    C2837h findFirst();

    /* renamed from: h */
    IntStream mo321h(C3189S c3189s);

    @Override // p033j$.util.stream.InterfaceC3033g
    InterfaceC2843n.InterfaceC2844a iterator();

    /* renamed from: j0 */
    Object mo320j0(InterfaceC2835x interfaceC2835x, InterfaceC2832u interfaceC2832u, BiConsumer biConsumer);

    IntStream limit(long j);

    C2837h max();

    C2837h min();

    /* renamed from: p */
    IntStream mo319p(C3195Y c3195y);

    @Override // 
    IntStream parallel();

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3033g
    Spliterator.InterfaceC2774b spliterator();

    int sum();

    C2810e summaryStatistics();

    int[] toArray();

    /* renamed from: u */
    boolean mo318u(C3189S c3189s);

    /* renamed from: z */
    InterfaceC2966U mo317z(C3191U c3191u);
}
