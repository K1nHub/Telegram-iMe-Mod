package p034j$.util.stream;

import p034j$.util.C2586f;
import p034j$.util.C2614i;
import p034j$.util.InterfaceC2618m;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2590d;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2593g;
import p034j$.util.function.InterfaceC2594h;
import p034j$.util.function.InterfaceC2607u;
import p034j$.util.function.InterfaceC2611y;
import p034j$.wrappers.C2945D;
import p034j$.wrappers.C2949F;
import p034j$.wrappers.C2957J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2745U extends InterfaceC2812g {
    /* renamed from: G */
    C2614i mo219G(InterfaceC2590d interfaceC2590d);

    /* renamed from: H */
    Object mo218H(InterfaceC2611y interfaceC2611y, InterfaceC2607u interfaceC2607u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo217K(double d, InterfaceC2590d interfaceC2590d);

    /* renamed from: M */
    Stream mo216M(InterfaceC2593g interfaceC2593g);

    /* renamed from: R */
    IntStream mo215R(C2949F c2949f);

    /* renamed from: Y */
    boolean mo214Y(C2945D c2945d);

    C2614i average();

    /* renamed from: b */
    InterfaceC2745U mo213b(InterfaceC2592f interfaceC2592f);

    Stream boxed();

    long count();

    InterfaceC2745U distinct();

    C2614i findAny();

    C2614i findFirst();

    /* renamed from: h0 */
    boolean mo212h0(C2945D c2945d);

    /* renamed from: i0 */
    boolean mo211i0(C2945D c2945d);

    @Override // p034j$.util.stream.InterfaceC2812g
    InterfaceC2618m iterator();

    /* renamed from: j */
    void mo210j(InterfaceC2592f interfaceC2592f);

    /* renamed from: l0 */
    void mo209l0(InterfaceC2592f interfaceC2592f);

    InterfaceC2745U limit(long j);

    C2614i max();

    C2614i min();

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    InterfaceC2745U parallel();

    /* renamed from: r */
    InterfaceC2745U mo207r(C2945D c2945d);

    @Override // p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    InterfaceC2745U sequential();

    InterfaceC2745U skip(long j);

    InterfaceC2745U sorted();

    @Override // p034j$.util.stream.InterfaceC2812g
    InterfaceC2625s.InterfaceC2626a spliterator();

    double sum();

    C2586f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2745U mo206w(InterfaceC2593g interfaceC2593g);

    /* renamed from: x */
    InterfaceC2802e1 mo205x(InterfaceC2594h interfaceC2594h);

    /* renamed from: y */
    InterfaceC2745U mo204y(C2957J c2957j);
}
