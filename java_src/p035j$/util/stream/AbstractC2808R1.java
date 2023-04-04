package p035j$.util.stream;

import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2808R1 extends AbstractC2719C1 implements InterfaceC3004z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2808R1(InterfaceC3004z1 interfaceC3004z1, InterfaceC3004z1 interfaceC3004z12) {
        super(interfaceC3004z1, interfaceC3004z12);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: d */
    public void mo287d(Object obj, int i) {
        ((InterfaceC3004z1) this.f707a).mo287d(obj, i);
        ((InterfaceC3004z1) this.f708b).mo287d(obj, i + ((int) ((InterfaceC3004z1) this.f707a).count()));
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        long count = count();
        if (count < 2147483639) {
            Object mo288c = mo288c((int) count);
            mo287d(mo288c, 0);
            return mo288c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: g */
    public void mo285g(Object obj) {
        ((InterfaceC3004z1) this.f707a).mo285g(obj);
        ((InterfaceC3004z1) this.f708b).mo285g(obj);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m362g(this, interfaceC2675m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f707a, this.f708b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
