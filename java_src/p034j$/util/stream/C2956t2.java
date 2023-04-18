package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C2956t2 extends C2844a4 implements InterfaceC2694A1, InterfaceC2949s1 {
    @Override // p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public InterfaceC2694A1 mo318a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
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

    @Override // p034j$.util.stream.C2844a4, p034j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2694A1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.C2844a4, p034j$.lang.InterfaceC2562e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p034j$.util.stream.C2844a4, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: i */
    public void mo317i(Object[] objArr, int i) {
        super.mo317i(objArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        clear();
        m438u(j);
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
    public Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2662m.apply((int) count);
            mo317i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2694A1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m338q(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.C2844a4, java.lang.Iterable, p034j$.lang.InterfaceC2562e
    public InterfaceC2688s spliterator() {
        return super.spliterator();
    }
}
