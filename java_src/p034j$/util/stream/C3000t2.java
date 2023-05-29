package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C3000t2 extends C2888a4 implements InterfaceC2738A1, InterfaceC2993s1 {
    @Override // p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC2738A1 mo323a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.stream.C2888a4, p034j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC2738A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.C2888a4, p034j$.lang.InterfaceC2606e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p034j$.util.stream.C2888a4, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        super.mo322i(objArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        clear();
        m443u(j);
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
    public Object[] mo319q(InterfaceC2706m interfaceC2706m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2706m.apply((int) count);
            mo322i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2738A1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m343q(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.C2888a4, java.lang.Iterable, p034j$.lang.InterfaceC2606e
    public InterfaceC2732s spliterator() {
        return super.spliterator();
    }
}
