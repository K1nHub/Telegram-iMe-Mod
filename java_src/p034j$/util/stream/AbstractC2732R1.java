package p034j$.util.stream;

import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2732R1 extends AbstractC2643C1 implements InterfaceC2928z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2732R1(InterfaceC2928z1 interfaceC2928z1, InterfaceC2928z1 interfaceC2928z12) {
        super(interfaceC2928z1, interfaceC2928z12);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: d */
    public void mo292d(Object obj, int i) {
        ((InterfaceC2928z1) this.f702a).mo292d(obj, i);
        ((InterfaceC2928z1) this.f703b).mo292d(obj, i + ((int) ((InterfaceC2928z1) this.f702a).count()));
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: e */
    public Object mo291e() {
        long count = count();
        if (count < 2147483639) {
            Object mo293c = mo293c((int) count);
            mo292d(mo293c, 0);
            return mo293c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: g */
    public void mo290g(Object obj) {
        ((InterfaceC2928z1) this.f702a).mo290g(obj);
        ((InterfaceC2928z1) this.f703b).mo290g(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m367g(this, interfaceC2599m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f702a, this.f703b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
