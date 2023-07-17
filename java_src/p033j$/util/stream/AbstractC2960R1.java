package p033j$.util.stream;

import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2960R1 extends AbstractC2871C1 implements InterfaceC3156z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2960R1(InterfaceC3156z1 interfaceC3156z1, InterfaceC3156z1 interfaceC3156z12) {
        super(interfaceC3156z1, interfaceC3156z12);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        ((InterfaceC3156z1) this.f787a).mo278d(obj, i);
        ((InterfaceC3156z1) this.f788b).mo278d(obj, i + ((int) ((InterfaceC3156z1) this.f787a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo277e() {
        long count = count();
        if (count < 2147483639) {
            Object mo279c = mo279c((int) count);
            mo278d(mo279c, 0);
            return mo279c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        ((InterfaceC3156z1) this.f787a).mo276g(obj);
        ((InterfaceC3156z1) this.f788b).mo276g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo319q(InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m353g(this, interfaceC2827m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f787a, this.f788b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
