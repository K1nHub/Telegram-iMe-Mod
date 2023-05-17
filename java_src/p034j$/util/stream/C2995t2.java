package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C2995t2 extends C2883a4 implements InterfaceC2733A1, InterfaceC2988s1 {
    @Override // p034j$.util.stream.InterfaceC2988s1
    /* renamed from: a */
    public InterfaceC2733A1 mo323a() {
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.stream.C2883a4, p034j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public InterfaceC2733A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.C2883a4, p034j$.lang.InterfaceC2601e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p034j$.util.stream.C2883a4, p034j$.util.stream.InterfaceC2733A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        super.mo322i(objArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        clear();
        m443u(j);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2701m interfaceC2701m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2701m.apply((int) count);
            mo322i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2733A1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m343q(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.C2883a4, java.lang.Iterable, p034j$.lang.InterfaceC2601e
    public InterfaceC2727s spliterator() {
        return super.spliterator();
    }
}
