package p034j$.util.stream;

import p034j$.util.C2688f;
import p034j$.util.C2716i;
import p034j$.util.InterfaceC2720m;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2692d;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2695g;
import p034j$.util.function.InterfaceC2696h;
import p034j$.util.function.InterfaceC2709u;
import p034j$.util.function.InterfaceC2713y;
import p034j$.wrappers.C3047D;
import p034j$.wrappers.C3051F;
import p034j$.wrappers.C3059J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2847U extends InterfaceC2914g {
    /* renamed from: G */
    C2716i mo205G(InterfaceC2692d interfaceC2692d);

    /* renamed from: H */
    Object mo204H(InterfaceC2713y interfaceC2713y, InterfaceC2709u interfaceC2709u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo203K(double d, InterfaceC2692d interfaceC2692d);

    /* renamed from: M */
    Stream mo202M(InterfaceC2695g interfaceC2695g);

    /* renamed from: R */
    IntStream mo201R(C3051F c3051f);

    /* renamed from: Y */
    boolean mo200Y(C3047D c3047d);

    C2716i average();

    /* renamed from: b */
    InterfaceC2847U mo199b(InterfaceC2694f interfaceC2694f);

    Stream boxed();

    long count();

    InterfaceC2847U distinct();

    C2716i findAny();

    C2716i findFirst();

    /* renamed from: h0 */
    boolean mo198h0(C3047D c3047d);

    /* renamed from: i0 */
    boolean mo197i0(C3047D c3047d);

    @Override // p034j$.util.stream.InterfaceC2914g
    InterfaceC2720m iterator();

    /* renamed from: j */
    void mo196j(InterfaceC2694f interfaceC2694f);

    /* renamed from: l0 */
    void mo195l0(InterfaceC2694f interfaceC2694f);

    InterfaceC2847U limit(long j);

    C2716i max();

    C2716i min();

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    InterfaceC2847U parallel();

    /* renamed from: r */
    InterfaceC2847U mo193r(C3047D c3047d);

    @Override // p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    InterfaceC2847U sequential();

    InterfaceC2847U skip(long j);

    InterfaceC2847U sorted();

    @Override // p034j$.util.stream.InterfaceC2914g
    InterfaceC2727s.InterfaceC2728a spliterator();

    double sum();

    C2688f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2847U mo192w(InterfaceC2695g interfaceC2695g);

    /* renamed from: x */
    InterfaceC2904e1 mo191x(InterfaceC2696h interfaceC2696h);

    /* renamed from: y */
    InterfaceC2847U mo190y(C3059J c3059j);
}
