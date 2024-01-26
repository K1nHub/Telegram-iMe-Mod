package p033j$.util.stream;

import p033j$.util.C2808e;
import p033j$.util.C2834g;
import p033j$.util.C2835h;
import p033j$.util.InterfaceC2841n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2819j;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2822m;
import p033j$.util.function.InterfaceC2830u;
import p033j$.util.function.InterfaceC2833x;
import p033j$.wrappers.C3187S;
import p033j$.wrappers.C3189U;
import p033j$.wrappers.C3193Y;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3031g {
    /* renamed from: B */
    boolean mo334B(C3187S c3187s);

    /* renamed from: E */
    boolean mo333E(C3187S c3187s);

    /* renamed from: H */
    void mo332H(InterfaceC2821l interfaceC2821l);

    /* renamed from: I */
    Stream mo331I(IntFunction intFunction);

    /* renamed from: M */
    int mo330M(int i, InterfaceC2819j interfaceC2819j);

    /* renamed from: O */
    IntStream mo329O(IntFunction intFunction);

    /* renamed from: T */
    void mo328T(InterfaceC2821l interfaceC2821l);

    /* renamed from: Z */
    C2835h mo327Z(InterfaceC2819j interfaceC2819j);

    InterfaceC2964U asDoubleStream();

    InterfaceC3021e1 asLongStream();

    C2834g average();

    /* renamed from: b0 */
    IntStream mo326b0(InterfaceC2821l interfaceC2821l);

    Stream boxed();

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3021e1 mo325f(InterfaceC2822m interfaceC2822m);

    C2835h findAny();

    C2835h findFirst();

    /* renamed from: h */
    IntStream mo324h(C3187S c3187s);

    @Override // p033j$.util.stream.InterfaceC3031g
    InterfaceC2841n.InterfaceC2842a iterator();

    /* renamed from: j0 */
    Object mo323j0(InterfaceC2833x interfaceC2833x, InterfaceC2830u interfaceC2830u, BiConsumer biConsumer);

    IntStream limit(long j);

    C2835h max();

    C2835h min();

    /* renamed from: p */
    IntStream mo322p(C3193Y c3193y);

    @Override // 
    IntStream parallel();

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3031g
    Spliterator.InterfaceC2772b spliterator();

    int sum();

    C2808e summaryStatistics();

    int[] toArray();

    /* renamed from: u */
    boolean mo321u(C3187S c3187s);

    /* renamed from: z */
    InterfaceC2964U mo320z(C3189U c3189u);
}
