package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2815V1 extends C2812U3 implements InterfaceC2961u1, InterfaceC2931p1 {
    @Override // p034j$.util.stream.C2812U3
    /* renamed from: B */
    public InterfaceC2688s.InterfaceC2689a mo469B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: D */
    public /* synthetic */ void mo317i(Double[] dArr, int i) {
        AbstractC2925o1.m347h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2961u1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m341n(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public InterfaceC2694A1 mo318a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2931p1, p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public InterfaceC2961u1 mo318a() {
        return this;
    }

    @Override // p034j$.util.stream.C2812U3, p034j$.util.function.InterfaceC2655f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2991z1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.AbstractC2837Z3, p034j$.util.stream.InterfaceC2991z1
    /* renamed from: d */
    public void mo273d(Object obj, int i) {
        super.mo273d((double[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3, p034j$.util.stream.InterfaceC2991z1
    /* renamed from: e */
    public Object mo272e() {
        return (double[]) super.mo272e();
    }

    @Override // p034j$.util.stream.AbstractC2837Z3, p034j$.util.stream.InterfaceC2991z1
    /* renamed from: g */
    public void mo271g(Object obj) {
        super.mo271g((InterfaceC2655f) obj);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        clear();
        m453x(j);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public /* synthetic */ int mo315p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m348g(this, interfaceC2662m);
    }

    @Override // p034j$.util.stream.C2812U3, p034j$.util.stream.AbstractC2837Z3, java.lang.Iterable, p034j$.lang.InterfaceC2562e
    public InterfaceC2995t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo275b(int i) {
        mo275b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2812U3, p034j$.util.stream.AbstractC2837Z3, java.lang.Iterable, p034j$.lang.InterfaceC2562e
    public InterfaceC2688s spliterator() {
        return super.spliterator();
    }
}