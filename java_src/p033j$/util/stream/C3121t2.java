package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.t2 */
/* loaded from: classes2.dex */
public final class C3121t2 extends C3009a4 implements InterfaceC2859A1, InterfaceC3114s1 {
    @Override // p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC2859A1 mo341a() {
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.stream.C3009a4, p033j$.util.function.Consumer
    public void accept(Object obj) {
        super.accept(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.C3009a4, p033j$.lang.InterfaceC2727e
    public void forEach(Consumer consumer) {
        super.forEach(consumer);
    }

    @Override // p033j$.util.stream.C3009a4, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        super.mo340i(objArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        clear();
        m461u(j);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2827m interfaceC2827m) {
        long count = count();
        if (count < 2147483639) {
            Object[] objArr = (Object[]) interfaceC2827m.apply((int) count);
            mo340i(objArr, 0);
            return objArr;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2859A1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m361q(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.C3009a4, java.lang.Iterable, p033j$.lang.InterfaceC2727e
    public InterfaceC2853s spliterator() {
        return super.spliterator();
    }
}
