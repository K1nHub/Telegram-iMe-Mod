package p034j$.util.stream;

import p034j$.util.C2448f;
import p034j$.util.C2476i;
import p034j$.util.InterfaceC2480m;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2452d;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2455g;
import p034j$.util.function.InterfaceC2456h;
import p034j$.util.function.InterfaceC2469u;
import p034j$.util.function.InterfaceC2473y;
import p034j$.wrappers.C2807D;
import p034j$.wrappers.C2811F;
import p034j$.wrappers.C2819J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2607U extends InterfaceC2674g {
    /* renamed from: G */
    C2476i mo220G(InterfaceC2452d interfaceC2452d);

    /* renamed from: H */
    Object mo219H(InterfaceC2473y interfaceC2473y, InterfaceC2469u interfaceC2469u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo218K(double d, InterfaceC2452d interfaceC2452d);

    /* renamed from: M */
    Stream mo217M(InterfaceC2455g interfaceC2455g);

    /* renamed from: R */
    IntStream mo216R(C2811F c2811f);

    /* renamed from: Y */
    boolean mo215Y(C2807D c2807d);

    C2476i average();

    /* renamed from: b */
    InterfaceC2607U mo214b(InterfaceC2454f interfaceC2454f);

    Stream boxed();

    long count();

    InterfaceC2607U distinct();

    C2476i findAny();

    C2476i findFirst();

    /* renamed from: h0 */
    boolean mo213h0(C2807D c2807d);

    /* renamed from: i0 */
    boolean mo212i0(C2807D c2807d);

    @Override // p034j$.util.stream.InterfaceC2674g
    InterfaceC2480m iterator();

    /* renamed from: j */
    void mo211j(InterfaceC2454f interfaceC2454f);

    /* renamed from: l0 */
    void mo210l0(InterfaceC2454f interfaceC2454f);

    InterfaceC2607U limit(long j);

    C2476i max();

    C2476i min();

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    InterfaceC2607U parallel();

    /* renamed from: r */
    InterfaceC2607U mo208r(C2807D c2807d);

    @Override // p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    InterfaceC2607U sequential();

    InterfaceC2607U skip(long j);

    InterfaceC2607U sorted();

    @Override // p034j$.util.stream.InterfaceC2674g
    InterfaceC2487s.InterfaceC2488a spliterator();

    double sum();

    C2448f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2607U mo207w(InterfaceC2455g interfaceC2455g);

    /* renamed from: x */
    InterfaceC2664e1 mo206x(InterfaceC2456h interfaceC2456h);

    /* renamed from: y */
    InterfaceC2607U mo205y(C2819J c2819j);
}
