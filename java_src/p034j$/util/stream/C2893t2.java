package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C2893t2 extends C2781a4 implements InterfaceC2631A1, InterfaceC2886s1 {
    @Override // p034j$.util.stream.InterfaceC2886s1
    /* renamed from: a */
    public InterfaceC2631A1 mo337a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
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

    @Override // p034j$.util.stream.C2781a4, p034j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2631A1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.C2781a4, p034j$.lang.InterfaceC2499e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p034j$.util.stream.C2781a4, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: i */
    public void mo336i(Object[] objArr, int i) {
        super.mo336i(objArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        clear();
        m457u(j);
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
    public Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2599m.apply((int) count);
            mo336i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2631A1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m357q(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.C2781a4, java.lang.Iterable, p034j$.lang.InterfaceC2499e
    public InterfaceC2625s spliterator() {
        return super.spliterator();
    }
}
