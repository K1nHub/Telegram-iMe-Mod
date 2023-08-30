package p033j$.util.stream;

import p033j$.util.C2979g;
import p033j$.util.C2981i;
import p033j$.util.C2982j;
import p033j$.util.InterfaceC2987o;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2963j;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2967n;
import p033j$.util.function.InterfaceC2975v;
import p033j$.util.function.InterfaceC2978y;
import p033j$.wrappers.C3340U;
import p033j$.wrappers.C3342W;
import p033j$.wrappers.C3347a0;
/* renamed from: j$.util.stream.IntStream */
/* loaded from: classes2.dex */
public interface IntStream extends InterfaceC3179g {
    /* renamed from: A */
    InterfaceC3112U mo285A(C3342W c3342w);

    /* renamed from: C */
    boolean mo284C(C3340U c3340u);

    /* renamed from: F */
    boolean mo283F(C3340U c3340u);

    /* renamed from: I */
    void mo282I(InterfaceC2965l interfaceC2965l);

    /* renamed from: J */
    Stream mo281J(InterfaceC2966m interfaceC2966m);

    /* renamed from: N */
    int mo280N(int i, InterfaceC2963j interfaceC2963j);

    /* renamed from: P */
    IntStream mo279P(InterfaceC2966m interfaceC2966m);

    /* renamed from: U */
    void mo278U(InterfaceC2965l interfaceC2965l);

    /* renamed from: a0 */
    C2982j mo277a0(InterfaceC2963j interfaceC2963j);

    InterfaceC3112U asDoubleStream();

    InterfaceC3169e1 asLongStream();

    C2981i average();

    Stream boxed();

    /* renamed from: c0 */
    IntStream mo276c0(InterfaceC2965l interfaceC2965l);

    long count();

    IntStream distinct();

    /* renamed from: f */
    InterfaceC3169e1 mo275f(InterfaceC2967n interfaceC2967n);

    C2982j findAny();

    C2982j findFirst();

    /* renamed from: h */
    IntStream mo274h(C3340U c3340u);

    @Override // p033j$.util.stream.InterfaceC3179g
    InterfaceC2987o.InterfaceC2988a iterator();

    /* renamed from: k0 */
    Object mo273k0(InterfaceC2978y interfaceC2978y, InterfaceC2975v interfaceC2975v, BiConsumer biConsumer);

    IntStream limit(long j);

    C2982j max();

    C2982j min();

    @Override // 
    IntStream parallel();

    /* renamed from: q */
    IntStream mo272q(C3347a0 c3347a0);

    @Override // 
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p033j$.util.stream.InterfaceC3179g
    InterfaceC2992s.InterfaceC2994b spliterator();

    int sum();

    C2979g summaryStatistics();

    int[] toArray();

    /* renamed from: v */
    boolean mo271v(C3340U c3340u);
}
