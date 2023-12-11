package p033j$.util.stream;

import p033j$.util.C2809d;
import p033j$.util.C2836g;
import p033j$.util.InterfaceC2841l;
import p033j$.util.Spliterator;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.InterfaceC2815d;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2818g;
import p033j$.util.function.InterfaceC2819h;
import p033j$.util.function.InterfaceC2831t;
import p033j$.util.function.InterfaceC2835x;
import p033j$.wrappers.C3164C;
import p033j$.wrappers.C3168E;
import p033j$.wrappers.C3176I;
/* renamed from: j$.util.stream.U */
/* loaded from: classes2.dex */
public interface InterfaceC2966U extends InterfaceC3033g {
    /* renamed from: F */
    C2836g mo277F(InterfaceC2815d interfaceC2815d);

    /* renamed from: G */
    Object mo276G(InterfaceC2835x interfaceC2835x, InterfaceC2831t interfaceC2831t, BiConsumer biConsumer);

    /* renamed from: J */
    double mo275J(double d, InterfaceC2815d interfaceC2815d);

    /* renamed from: L */
    Stream mo274L(InterfaceC2818g interfaceC2818g);

    /* renamed from: Q */
    IntStream mo273Q(C3168E c3168e);

    /* renamed from: X */
    boolean mo272X(C3164C c3164c);

    C2836g average();

    /* renamed from: b */
    InterfaceC2966U mo271b(InterfaceC2817f interfaceC2817f);

    Stream boxed();

    long count();

    InterfaceC2966U distinct();

    C2836g findAny();

    C2836g findFirst();

    /* renamed from: g0 */
    boolean mo270g0(C3164C c3164c);

    /* renamed from: h0 */
    boolean mo269h0(C3164C c3164c);

    @Override // p033j$.util.stream.InterfaceC3033g
    InterfaceC2841l iterator();

    /* renamed from: j */
    void mo268j(InterfaceC2817f interfaceC2817f);

    /* renamed from: k0 */
    void mo267k0(InterfaceC2817f interfaceC2817f);

    InterfaceC2966U limit(long j);

    C2836g max();

    C2836g min();

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    InterfaceC2966U parallel();

    /* renamed from: q */
    InterfaceC2966U mo265q(C3164C c3164c);

    @Override // p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    InterfaceC2966U sequential();

    InterfaceC2966U skip(long j);

    InterfaceC2966U sorted();

    @Override // p033j$.util.stream.InterfaceC3033g
    Spliterator.InterfaceC2773a spliterator();

    double sum();

    C2809d summaryStatistics();

    double[] toArray();

    /* renamed from: v */
    InterfaceC2966U mo264v(InterfaceC2818g interfaceC2818g);

    /* renamed from: w */
    InterfaceC3023e1 mo263w(InterfaceC2819h interfaceC2819h);

    /* renamed from: x */
    InterfaceC2966U mo262x(C3176I c3176i);
}
