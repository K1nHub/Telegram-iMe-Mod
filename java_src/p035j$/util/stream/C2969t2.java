package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C2969t2 extends C2857a4 implements InterfaceC2707A1, InterfaceC2962s1 {
    @Override // p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public InterfaceC2707A1 mo332a() {
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

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.stream.C2857a4, p035j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC2707A1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.C2857a4, p035j$.lang.InterfaceC2575e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p035j$.util.stream.C2857a4, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: i */
    public void mo331i(Object[] objArr, int i) {
        super.mo331i(objArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        clear();
        m452u(j);
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
    public Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2675m.apply((int) count);
            mo331i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2707A1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m352q(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.C2857a4, java.lang.Iterable, p035j$.lang.InterfaceC2575e
    public InterfaceC2701s spliterator() {
        return super.spliterator();
    }
}
