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
    public void mo296d(Object obj, int i) {
        ((InterfaceC3156z1) this.f790a).mo296d(obj, i);
        ((InterfaceC3156z1) this.f791b).mo296d(obj, i + ((int) ((InterfaceC3156z1) this.f790a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo295e() {
        long count = count();
        if (count < 2147483639) {
            Object mo297c = mo297c((int) count);
            mo296d(mo297c, 0);
            return mo297c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        ((InterfaceC3156z1) this.f790a).mo294g(obj);
        ((InterfaceC3156z1) this.f791b).mo294g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m371g(this, interfaceC2827m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f790a, this.f791b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
