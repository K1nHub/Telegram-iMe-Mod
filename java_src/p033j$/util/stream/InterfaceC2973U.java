package p033j$.util.stream;

import p033j$.util.C2814f;
import p033j$.util.C2842i;
import p033j$.util.InterfaceC2846m;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2818d;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2821g;
import p033j$.util.function.InterfaceC2822h;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2839y;
import p033j$.wrappers.C3173D;
import p033j$.wrappers.C3177F;
import p033j$.wrappers.C3185J;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2973U extends InterfaceC3040g {
    /* renamed from: G */
    C2842i mo205G(InterfaceC2818d interfaceC2818d);

    /* renamed from: H */
    Object mo204H(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, BiConsumer biConsumer);

    /* renamed from: K */
    double mo203K(double d, InterfaceC2818d interfaceC2818d);

    /* renamed from: M */
    Stream mo202M(InterfaceC2821g interfaceC2821g);

    /* renamed from: R */
    IntStream mo201R(C3177F c3177f);

    /* renamed from: Y */
    boolean mo200Y(C3173D c3173d);

    C2842i average();

    /* renamed from: b */
    InterfaceC2973U mo199b(InterfaceC2820f interfaceC2820f);

    Stream boxed();

    long count();

    InterfaceC2973U distinct();

    C2842i findAny();

    C2842i findFirst();

    /* renamed from: h0 */
    boolean mo198h0(C3173D c3173d);

    /* renamed from: i0 */
    boolean mo197i0(C3173D c3173d);

    @Override // p033j$.util.stream.InterfaceC3040g
    InterfaceC2846m iterator();

    /* renamed from: j */
    void mo196j(InterfaceC2820f interfaceC2820f);

    /* renamed from: l0 */
    void mo195l0(InterfaceC2820f interfaceC2820f);

    InterfaceC2973U limit(long j);

    C2842i max();

    C2842i min();

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    InterfaceC2973U parallel();

    /* renamed from: r */
    InterfaceC2973U mo193r(C3173D c3173d);

    @Override // p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    InterfaceC2973U sequential();

    InterfaceC2973U skip(long j);

    InterfaceC2973U sorted();

    @Override // p033j$.util.stream.InterfaceC3040g
    InterfaceC2853s.InterfaceC2854a spliterator();

    double sum();

    C2814f summaryStatistics();

    double[] toArray();

    /* renamed from: w */
    InterfaceC2973U mo192w(InterfaceC2821g interfaceC2821g);

    /* renamed from: x */
    InterfaceC3030e1 mo191x(InterfaceC2822h interfaceC2822h);

    /* renamed from: y */
    InterfaceC2973U mo190y(C3185J c3185j);
}
