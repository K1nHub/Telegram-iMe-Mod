package p033j$.util.stream;

import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C3050Y1 extends AbstractC3062a2 implements InterfaceC3205y1 {
    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3145o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3062a2, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC3211z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: e */
    public Object mo295e() {
        long[] jArr;
        jArr = AbstractC3200x2.f1174f;
        return jArr;
    }

    @Override // p033j$.util.stream.AbstractC3062a2, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3205y1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m362p(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return AbstractC2832I.m641d();
    }

    @Override // p033j$.util.stream.AbstractC3062a2, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return AbstractC2832I.m641d();
    }
}
