package p033j$.util.stream;

import p033j$.util.C2812d;
import p033j$.util.C2839g;
import p033j$.util.InterfaceC2844l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2834t;
import p033j$.util.function.InterfaceC2838x;
import p033j$.wrappers.C3167C;
import p033j$.wrappers.C3171E;
import p033j$.wrappers.C3179I;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2969U extends InterfaceC3036g {
    /* renamed from: F */
    C2839g mo277F(InterfaceC2818d interfaceC2818d);

    /* renamed from: G */
    Object mo276G(InterfaceC2838x interfaceC2838x, InterfaceC2834t interfaceC2834t, BiConsumer biConsumer);

    /* renamed from: J */
    double mo275J(double d, InterfaceC2818d interfaceC2818d);

    /* renamed from: L */
    Stream mo274L(InterfaceC2821g interfaceC2821g);

    /* renamed from: Q */
    IntStream mo273Q(C3171E c3171e);

    /* renamed from: X */
    boolean mo272X(C3167C c3167c);

    C2839g average();

    /* renamed from: b */
    InterfaceC2969U mo271b(InterfaceC2820f interfaceC2820f);

    Stream boxed();

    long count();

    InterfaceC2969U distinct();

    C2839g findAny();

    C2839g findFirst();

    /* renamed from: g0 */
    boolean mo270g0(C3167C c3167c);

    /* renamed from: h0 */
    boolean mo269h0(C3167C c3167c);

    @Override // p033j$.util.stream.InterfaceC3036g
    InterfaceC2844l iterator();

    /* renamed from: j */
    void mo268j(InterfaceC2820f interfaceC2820f);

    /* renamed from: k0 */
    void mo267k0(InterfaceC2820f interfaceC2820f);

    InterfaceC2969U limit(long j);

    C2839g max();

    C2839g min();

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    InterfaceC2969U parallel();

    /* renamed from: q */
    InterfaceC2969U mo265q(C3167C c3167c);

    @Override // p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    InterfaceC2969U sequential();

    InterfaceC2969U skip(long j);

    InterfaceC2969U sorted();

    @Override // p033j$.util.stream.InterfaceC3036g
    Spliterator.InterfaceC2776a spliterator();

    double sum();

    C2812d summaryStatistics();

    double[] toArray();

    /* renamed from: v */
    InterfaceC2969U mo264v(InterfaceC2821g interfaceC2821g);

    /* renamed from: w */
    InterfaceC3026e1 mo263w(InterfaceC2822h interfaceC2822h);

    /* renamed from: x */
    InterfaceC2969U mo262x(C3179I c3179i);
}
