package p035j$.util.stream;

import p035j$.util.C2662f;
import p035j$.util.C2690i;
import p035j$.util.InterfaceC2694m;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.BiConsumer;
import p035j$.util.function.InterfaceC2666d;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2669g;
import p035j$.util.function.InterfaceC2670h;
import p035j$.util.function.InterfaceC2683u;
import p035j$.util.function.InterfaceC2687y;
import p035j$.wrappers.C3021D;
import p035j$.wrappers.C3025F;
import p035j$.wrappers.C3033J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2821U extends InterfaceC2888g {
    /* renamed from: G */
    C2690i mo214G(InterfaceC2666d interfaceC2666d);

    /* renamed from: H */
    Object mo213H(InterfaceC2687y interfaceC2687y, InterfaceC2683u interfaceC2683u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo212K(double d, InterfaceC2666d interfaceC2666d);

    /* renamed from: M */
    Stream mo211M(InterfaceC2669g interfaceC2669g);

    /* renamed from: R */
    IntStream mo210R(C3025F c3025f);

    /* renamed from: Y */
    boolean mo209Y(C3021D c3021d);

    C2690i average();

    /* renamed from: b */
    InterfaceC2821U mo208b(InterfaceC2668f interfaceC2668f);

    Stream boxed();

    long count();

    InterfaceC2821U distinct();

    C2690i findAny();

    C2690i findFirst();

    /* renamed from: h0 */
    boolean mo207h0(C3021D c3021d);

    /* renamed from: i0 */
    boolean mo206i0(C3021D c3021d);

    @Override // p035j$.util.stream.InterfaceC2888g
    InterfaceC2694m iterator();

    /* renamed from: j */
    void mo205j(InterfaceC2668f interfaceC2668f);

    /* renamed from: l0 */
    void mo204l0(InterfaceC2668f interfaceC2668f);

    InterfaceC2821U limit(long j);

    C2690i max();

    C2690i min();

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    InterfaceC2821U parallel();

    /* renamed from: r */
    InterfaceC2821U mo202r(C3021D c3021d);

    @Override // p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    InterfaceC2821U sequential();

    InterfaceC2821U skip(long j);

    InterfaceC2821U sorted();

    @Override // p035j$.util.stream.InterfaceC2888g
    InterfaceC2701s.InterfaceC2702a spliterator();

    double sum();

    C2662f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2821U mo201w(InterfaceC2669g interfaceC2669g);

    /* renamed from: x */
    InterfaceC2878e1 mo200x(InterfaceC2670h interfaceC2670h);

    /* renamed from: y */
    InterfaceC2821U mo199y(C3033J c3033j);
}
