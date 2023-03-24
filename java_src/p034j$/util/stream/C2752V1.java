package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.V1 */
/* loaded from: classes2.dex */
public final class C2752V1 extends C2749U3 implements InterfaceC2898u1, InterfaceC2868p1 {
    @Override // p034j$.util.stream.C2749U3
    /* renamed from: B */
    public InterfaceC2625s.InterfaceC2626a mo488B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: D */
    public /* synthetic */ void mo336i(Double[] dArr, int i) {
        AbstractC2862o1.m366h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2898u1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m360n(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2886s1
    /* renamed from: a */
    public InterfaceC2631A1 mo337a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2868p1, p034j$.util.stream.InterfaceC2886s1
    /* renamed from: a */
    public InterfaceC2898u1 mo337a() {
        return this;
    }

    @Override // p034j$.util.stream.C2749U3, p034j$.util.function.InterfaceC2592f
    public void accept(double d) {
        super.accept(d);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2928z1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.AbstractC2774Z3, p034j$.util.stream.InterfaceC2928z1
    /* renamed from: d */
    public void mo292d(Object obj, int i) {
        super.mo292d((double[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3, p034j$.util.stream.InterfaceC2928z1
    /* renamed from: e */
    public Object mo291e() {
        return (double[]) super.mo291e();
    }

    @Override // p034j$.util.stream.AbstractC2774Z3, p034j$.util.stream.InterfaceC2928z1
    /* renamed from: g */
    public void mo290g(Object obj) {
        super.mo290g((InterfaceC2592f) obj);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        clear();
        m472x(j);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public /* synthetic */ int mo334p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m367g(this, interfaceC2599m);
    }

    @Override // p034j$.util.stream.C2749U3, p034j$.util.stream.AbstractC2774Z3, java.lang.Iterable, p034j$.lang.InterfaceC2499e
    public InterfaceC2932t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2631A1 mo294b(int i) {
        mo294b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2749U3, p034j$.util.stream.AbstractC2774Z3, java.lang.Iterable, p034j$.lang.InterfaceC2499e
    public InterfaceC2625s spliterator() {
        return super.spliterator();
    }
}
