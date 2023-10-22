package p033j$.util.stream;

import p033j$.util.C2808d;
import p033j$.util.C2835g;
import p033j$.util.InterfaceC2840l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2814d;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2817g;
import p033j$.util.function.InterfaceC2818h;
import p033j$.util.function.InterfaceC2830t;
import p033j$.util.function.InterfaceC2834x;
import p033j$.wrappers.C3163C;
import p033j$.wrappers.C3167E;
import p033j$.wrappers.C3175I;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2965U extends InterfaceC3032g {
    /* renamed from: F */
    C2835g mo276F(InterfaceC2814d interfaceC2814d);

    /* renamed from: G */
    Object mo275G(InterfaceC2834x interfaceC2834x, InterfaceC2830t interfaceC2830t, BiConsumer biConsumer);

    /* renamed from: J */
    double mo274J(double d, InterfaceC2814d interfaceC2814d);

    /* renamed from: L */
    Stream mo273L(InterfaceC2817g interfaceC2817g);

    /* renamed from: Q */
    IntStream mo272Q(C3167E c3167e);

    /* renamed from: X */
    boolean mo271X(C3163C c3163c);

    C2835g average();

    /* renamed from: b */
    InterfaceC2965U mo270b(InterfaceC2816f interfaceC2816f);

    Stream boxed();

    long count();

    InterfaceC2965U distinct();

    C2835g findAny();

    C2835g findFirst();

    /* renamed from: g0 */
    boolean mo269g0(C3163C c3163c);

    /* renamed from: h0 */
    boolean mo268h0(C3163C c3163c);

    @Override // p033j$.util.stream.InterfaceC3032g
    InterfaceC2840l iterator();

    /* renamed from: j */
    void mo267j(InterfaceC2816f interfaceC2816f);

    /* renamed from: k0 */
    void mo266k0(InterfaceC2816f interfaceC2816f);

    InterfaceC2965U limit(long j);

    C2835g max();

    C2835g min();

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    InterfaceC2965U parallel();

    /* renamed from: q */
    InterfaceC2965U mo264q(C3163C c3163c);

    @Override // p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    InterfaceC2965U sequential();

    InterfaceC2965U skip(long j);

    InterfaceC2965U sorted();

    @Override // p033j$.util.stream.InterfaceC3032g
    Spliterator.InterfaceC2772a spliterator();

    double sum();

    C2808d summaryStatistics();

    double[] toArray();

    /* renamed from: v */
    InterfaceC2965U mo263v(InterfaceC2817g interfaceC2817g);

    /* renamed from: w */
    InterfaceC3022e1 mo262w(InterfaceC2818h interfaceC2818h);

    /* renamed from: x */
    InterfaceC2965U mo261x(C3175I c3175i);
}
