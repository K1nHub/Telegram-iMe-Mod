package p034j$.util.stream;

import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2718R1 extends AbstractC2629C1 implements InterfaceC2914z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2718R1(InterfaceC2914z1 interfaceC2914z1, InterfaceC2914z1 interfaceC2914z12) {
        super(interfaceC2914z1, interfaceC2914z12);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        ((InterfaceC2914z1) this.f701a).mo293d(obj, i);
        ((InterfaceC2914z1) this.f702b).mo293d(obj, i + ((int) ((InterfaceC2914z1) this.f701a).count()));
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
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

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        ((InterfaceC2914z1) this.f701a).mo291g(obj);
        ((InterfaceC2914z1) this.f702b).mo291g(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m368g(this, interfaceC2585m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f701a, this.f702b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
