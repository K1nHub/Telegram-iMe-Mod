package p034j$.util.stream;

import p034j$.util.C2572f;
import p034j$.util.C2600i;
import p034j$.util.InterfaceC2604m;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2576d;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2579g;
import p034j$.util.function.InterfaceC2580h;
import p034j$.util.function.InterfaceC2593u;
import p034j$.util.function.InterfaceC2597y;
import p034j$.wrappers.C2931D;
import p034j$.wrappers.C2935F;
import p034j$.wrappers.C2943J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2731U extends InterfaceC2798g {
    /* renamed from: G */
    C2600i mo220G(InterfaceC2576d interfaceC2576d);

    /* renamed from: H */
    Object mo219H(InterfaceC2597y interfaceC2597y, InterfaceC2593u interfaceC2593u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo218K(double d, InterfaceC2576d interfaceC2576d);

    /* renamed from: M */
    Stream mo217M(InterfaceC2579g interfaceC2579g);

    /* renamed from: R */
    IntStream mo216R(C2935F c2935f);

    /* renamed from: Y */
    boolean mo215Y(C2931D c2931d);

    C2600i average();

    /* renamed from: b */
    InterfaceC2731U mo214b(InterfaceC2578f interfaceC2578f);

    Stream boxed();

    long count();

    InterfaceC2731U distinct();

    C2600i findAny();

    C2600i findFirst();

    /* renamed from: h0 */
    boolean mo213h0(C2931D c2931d);

    /* renamed from: i0 */
    boolean mo212i0(C2931D c2931d);

    @Override // p034j$.util.stream.InterfaceC2798g
    InterfaceC2604m iterator();

    /* renamed from: j */
    void mo211j(InterfaceC2578f interfaceC2578f);

    /* renamed from: l0 */
    void mo210l0(InterfaceC2578f interfaceC2578f);

    InterfaceC2731U limit(long j);

    C2600i max();

    C2600i min();

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    InterfaceC2731U parallel();

    /* renamed from: r */
    InterfaceC2731U mo208r(C2931D c2931d);

    @Override // p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    InterfaceC2731U sequential();

    InterfaceC2731U skip(long j);

    InterfaceC2731U sorted();

    @Override // p034j$.util.stream.InterfaceC2798g
    InterfaceC2611s.InterfaceC2612a spliterator();

    double sum();

    C2572f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2731U mo207w(InterfaceC2579g interfaceC2579g);

    /* renamed from: x */
    InterfaceC2788e1 mo206x(InterfaceC2580h interfaceC2580h);

    /* renamed from: y */
    InterfaceC2731U mo205y(C2943J c2943j);
}
