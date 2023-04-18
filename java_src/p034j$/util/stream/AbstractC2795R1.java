package p034j$.util.stream;

import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2795R1 extends AbstractC2706C1 implements InterfaceC2991z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2795R1(InterfaceC2991z1 interfaceC2991z1, InterfaceC2991z1 interfaceC2991z12) {
        super(interfaceC2991z1, interfaceC2991z12);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: d */
    public void mo273d(Object obj, int i) {
        ((InterfaceC2991z1) this.f702a).mo273d(obj, i);
        ((InterfaceC2991z1) this.f703b).mo273d(obj, i + ((int) ((InterfaceC2991z1) this.f702a).count()));
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: e */
    public Object mo272e() {
        long count = count();
        if (count < 2147483639) {
            Object mo274c = mo274c((int) count);
            mo273d(mo274c, 0);
            return mo274c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: g */
    public void mo271g(Object obj) {
        ((InterfaceC2991z1) this.f702a).mo271g(obj);
        ((InterfaceC2991z1) this.f703b).mo271g(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m348g(this, interfaceC2662m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f702a, this.f703b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
