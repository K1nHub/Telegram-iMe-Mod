package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.e2 */
/* loaded from: classes2.dex */
public final class C2910e2 extends C2866W3 implements InterfaceC3017w1, InterfaceC2981q1 {
    @Override // p034j$.util.stream.C2866W3
    /* renamed from: B */
    public InterfaceC2732s.InterfaceC2734b mo415B() {
        return super.spliterator();
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: C */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: D */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC2969o1.m351i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: E */
    public /* synthetic */ InterfaceC3017w1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m345o(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC2738A1 mo323a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2981q1, p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC3017w1 mo323a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.C2866W3, p034j$.util.function.InterfaceC2705l
    public void accept(int i) {
        super.accept(i);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC3035z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.AbstractC2881Z3, p034j$.util.stream.InterfaceC3035z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        super.mo278d((int[]) obj, i);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3, p034j$.util.stream.InterfaceC3035z1
    /* renamed from: e */
    public Object mo277e() {
        return (int[]) super.mo277e();
    }

    @Override // p034j$.util.stream.AbstractC2881Z3, p034j$.util.stream.InterfaceC3035z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        super.mo276g((InterfaceC2705l) obj);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        clear();
        m458x(j);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo319q(InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m353g(this, interfaceC2706m);
    }

    @Override // p034j$.util.stream.C2866W3, p034j$.util.stream.AbstractC2881Z3, java.lang.Iterable, p034j$.lang.InterfaceC2606e
    public InterfaceC3039t spliterator() {
        return super.spliterator();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.C2866W3, p034j$.util.stream.AbstractC2881Z3, java.lang.Iterable, p034j$.lang.InterfaceC2606e
    public InterfaceC2732s spliterator() {
        return super.spliterator();
    }
}
