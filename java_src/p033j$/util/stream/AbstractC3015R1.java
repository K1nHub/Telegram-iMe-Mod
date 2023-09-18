package p033j$.util.stream;

import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC3015R1 extends AbstractC2926C1 implements InterfaceC3211z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3015R1(InterfaceC3211z1 interfaceC3211z1, InterfaceC3211z1 interfaceC3211z12) {
        super(interfaceC3211z1, interfaceC3211z12);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        ((InterfaceC3211z1) this.f791a).mo296d(obj, i);
        ((InterfaceC3211z1) this.f792b).mo296d(obj, i + ((int) ((InterfaceC3211z1) this.f791a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
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

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        ((InterfaceC3211z1) this.f791a).mo294g(obj);
        ((InterfaceC3211z1) this.f792b).mo294g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m371g(this, interfaceC2882m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f791a, this.f792b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
