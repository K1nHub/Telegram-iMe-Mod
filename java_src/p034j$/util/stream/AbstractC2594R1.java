package p034j$.util.stream;

import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2594R1 extends AbstractC2505C1 implements InterfaceC2790z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2594R1(InterfaceC2790z1 interfaceC2790z1, InterfaceC2790z1 interfaceC2790z12) {
        super(interfaceC2790z1, interfaceC2790z12);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        ((InterfaceC2790z1) this.f696a).mo293d(obj, i);
        ((InterfaceC2790z1) this.f697b).mo293d(obj, i + ((int) ((InterfaceC2790z1) this.f696a).count()));
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        long count = count();
        if (count < 2147483639) {
            Object mo294c = mo294c((int) count);
            mo293d(mo294c, 0);
            return mo294c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        ((InterfaceC2790z1) this.f696a).mo291g(obj);
        ((InterfaceC2790z1) this.f697b).mo291g(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m368g(this, interfaceC2461m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f696a, this.f697b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
