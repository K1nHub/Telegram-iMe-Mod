package p034j$.util.stream;

import p034j$.util.C2649f;
import p034j$.util.C2677i;
import p034j$.util.InterfaceC2681m;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2653d;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2656g;
import p034j$.util.function.InterfaceC2657h;
import p034j$.util.function.InterfaceC2670u;
import p034j$.util.function.InterfaceC2674y;
import p034j$.wrappers.C3008D;
import p034j$.wrappers.C3012F;
import p034j$.wrappers.C3020J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2808U extends InterfaceC2875g {
    /* renamed from: G */
    C2677i mo200G(InterfaceC2653d interfaceC2653d);

    /* renamed from: H */
    Object mo199H(InterfaceC2674y interfaceC2674y, InterfaceC2670u interfaceC2670u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo198K(double d, InterfaceC2653d interfaceC2653d);

    /* renamed from: M */
    Stream mo197M(InterfaceC2656g interfaceC2656g);

    /* renamed from: R */
    IntStream mo196R(C3012F c3012f);

    /* renamed from: Y */
    boolean mo195Y(C3008D c3008d);

    C2677i average();

    /* renamed from: b */
    InterfaceC2808U mo194b(InterfaceC2655f interfaceC2655f);

    Stream boxed();

    long count();

    InterfaceC2808U distinct();

    C2677i findAny();

    C2677i findFirst();

    /* renamed from: h0 */
    boolean mo193h0(C3008D c3008d);

    /* renamed from: i0 */
    boolean mo192i0(C3008D c3008d);

    @Override // p034j$.util.stream.InterfaceC2875g
    InterfaceC2681m iterator();

    /* renamed from: j */
    void mo191j(InterfaceC2655f interfaceC2655f);

    /* renamed from: l0 */
    void mo190l0(InterfaceC2655f interfaceC2655f);

    InterfaceC2808U limit(long j);

    C2677i max();

    C2677i min();

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    InterfaceC2808U parallel();

    /* renamed from: r */
    InterfaceC2808U mo188r(C3008D c3008d);

    @Override // p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    InterfaceC2808U sequential();

    InterfaceC2808U skip(long j);

    InterfaceC2808U sorted();

    @Override // p034j$.util.stream.InterfaceC2875g
    InterfaceC2688s.InterfaceC2689a spliterator();

    double sum();

    C2649f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2808U mo187w(InterfaceC2656g interfaceC2656g);

    /* renamed from: x */
    InterfaceC2865e1 mo186x(InterfaceC2657h interfaceC2657h);

    /* renamed from: y */
    InterfaceC2808U mo185y(C3020J c3020j);
}
