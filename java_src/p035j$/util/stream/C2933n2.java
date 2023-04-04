package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.n2 */
/* loaded from: classes2.dex */
public final class C2933n2 extends C2845Y3 implements InterfaceC2998y1, InterfaceC2956r1 {
    @Override // p035j$.util.stream.C2845Y3
    /* renamed from: B */
    public InterfaceC2701s.InterfaceC2704c mo376B() {
        return super.spliterator();
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: D */
    public /* synthetic */ void mo331i(Long[] lArr, int i) {
        AbstractC2938o1.m359j(this, lArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC2998y1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m353p(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public InterfaceC2707A1 mo332a() {
        return this;
    }

    @Override // p035j$.util.stream.InterfaceC2956r1, p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public InterfaceC2998y1 mo332a() {
        return this;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.C2845Y3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        super.accept(j);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC3004z1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.AbstractC2850Z3, p035j$.util.stream.InterfaceC3004z1
    /* renamed from: d */
    public void mo287d(Object obj, int i) {
        super.mo287d((long[]) obj, i);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3, p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        return (long[]) super.mo286e();
    }

    @Override // p035j$.util.stream.AbstractC2850Z3, p035j$.util.stream.InterfaceC3004z1
    /* renamed from: g */
    public void mo285g(Object obj) {
        super.mo285g((InterfaceC2679q) obj);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        clear();
        m467x(j);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public /* synthetic */ int mo329p() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m362g(this, interfaceC2675m);
    }

    @Override // p035j$.util.stream.C2845Y3, p035j$.util.stream.AbstractC2850Z3, java.lang.Iterable, p035j$.lang.InterfaceC2575e
    public InterfaceC3008t spliterator() {
        return super.spliterator();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo289b(int i) {
        mo289b(i);
        throw null;
    }

    @Override // p035j$.util.stream.C2845Y3, p035j$.util.stream.AbstractC2850Z3, java.lang.Iterable, p035j$.lang.InterfaceC2575e
    public InterfaceC2701s spliterator() {
        return super.spliterator();
    }
}
