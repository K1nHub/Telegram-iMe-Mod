package p034j$.util.stream;

import p034j$.util.C2693f;
import p034j$.util.C2721i;
import p034j$.util.InterfaceC2725m;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.InterfaceC2697d;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2700g;
import p034j$.util.function.InterfaceC2701h;
import p034j$.util.function.InterfaceC2714u;
import p034j$.util.function.InterfaceC2718y;
import p034j$.wrappers.C3052D;
import p034j$.wrappers.C3056F;
import p034j$.wrappers.C3064J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2852U extends InterfaceC2919g {
    /* renamed from: G */
    C2721i mo205G(InterfaceC2697d interfaceC2697d);

    /* renamed from: H */
    Object mo204H(InterfaceC2718y interfaceC2718y, InterfaceC2714u interfaceC2714u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo203K(double d, InterfaceC2697d interfaceC2697d);

    /* renamed from: M */
    Stream mo202M(InterfaceC2700g interfaceC2700g);

    /* renamed from: R */
    IntStream mo201R(C3056F c3056f);

    /* renamed from: Y */
    boolean mo200Y(C3052D c3052d);

    C2721i average();

    /* renamed from: b */
    InterfaceC2852U mo199b(InterfaceC2699f interfaceC2699f);

    Stream boxed();

    long count();

    InterfaceC2852U distinct();

    C2721i findAny();

    C2721i findFirst();

    /* renamed from: h0 */
    boolean mo198h0(C3052D c3052d);

    /* renamed from: i0 */
    boolean mo197i0(C3052D c3052d);

    @Override // p034j$.util.stream.InterfaceC2919g
    InterfaceC2725m iterator();

    /* renamed from: j */
    void mo196j(InterfaceC2699f interfaceC2699f);

    /* renamed from: l0 */
    void mo195l0(InterfaceC2699f interfaceC2699f);

    InterfaceC2852U limit(long j);

    C2721i max();

    C2721i min();

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    InterfaceC2852U parallel();

    /* renamed from: r */
    InterfaceC2852U mo193r(C3052D c3052d);

    @Override // p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    InterfaceC2852U sequential();

    InterfaceC2852U skip(long j);

    InterfaceC2852U sorted();

    @Override // p034j$.util.stream.InterfaceC2919g
    InterfaceC2732s.InterfaceC2733a spliterator();

    double sum();

    C2693f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2852U mo192w(InterfaceC2700g interfaceC2700g);

    /* renamed from: x */
    InterfaceC2909e1 mo191x(InterfaceC2701h interfaceC2701h);

    /* renamed from: y */
    InterfaceC2852U mo190y(C3064J c3064j);
}
