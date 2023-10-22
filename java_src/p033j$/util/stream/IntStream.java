package p033j$.util.stream;

import p033j$.util.C2809e;
import p033j$.util.C2835g;
import p033j$.util.C2836h;
import p033j$.util.InterfaceC2842n;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2820j;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2823m;
import p033j$.util.function.InterfaceC2831u;
import p033j$.util.function.InterfaceC2834x;
import p033j$.wrappers.C3188S;
import p033j$.wrappers.C3190U;
import p033j$.wrappers.C3194Y;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3032g {
    /* renamed from: B */
    boolean mo330B(C3188S c3188s);

    /* renamed from: E */
    boolean mo329E(C3188S c3188s);

    /* renamed from: H */
    void mo328H(InterfaceC2822l interfaceC2822l);

    /* renamed from: I */
    Stream mo327I(IntFunction intFunction);

    /* renamed from: M */
    int mo326M(int i, InterfaceC2820j interfaceC2820j);

    /* renamed from: O */
    IntStream mo325O(IntFunction intFunction);

    /* renamed from: T */
    void mo324T(InterfaceC2822l interfaceC2822l);

    /* renamed from: Z */
    C2836h mo323Z(InterfaceC2820j interfaceC2820j);

    InterfaceC2965U asDoubleStream();

    InterfaceC3022e1 asLongStream();

    C2835g average();

    /* renamed from: b0 */
    IntStream mo322b0(InterfaceC2822l interfaceC2822l);

    Stream boxed();

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3022e1 mo321f(InterfaceC2823m interfaceC2823m);

    C2836h findAny();

    C2836h findFirst();

    /* renamed from: h */
    IntStream mo320h(C3188S c3188s);

    @Override // p033j$.util.stream.InterfaceC3032g
    InterfaceC2842n.InterfaceC2843a iterator();

    /* renamed from: j0 */
    Object mo319j0(InterfaceC2834x interfaceC2834x, InterfaceC2831u interfaceC2831u, BiConsumer biConsumer);

    IntStream limit(long j);

    C2836h max();

    C2836h min();

    /* renamed from: p */
    IntStream mo318p(C3194Y c3194y);

    @Override // 
    IntStream parallel();

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3032g
    Spliterator.InterfaceC2773b spliterator();

    int sum();

    C2809e summaryStatistics();

    int[] toArray();

    /* renamed from: u */
    boolean mo317u(C3188S c3188s);

    /* renamed from: z */
    InterfaceC2965U mo316z(C3190U c3190u);
}
