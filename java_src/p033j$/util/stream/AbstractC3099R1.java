package p033j$.util.stream;

import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC3099R1 extends AbstractC3010C1 implements InterfaceC3295z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3099R1(InterfaceC3295z1 interfaceC3295z1, InterfaceC3295z1 interfaceC3295z12) {
        super(interfaceC3295z1, interfaceC3295z12);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        ((InterfaceC3295z1) this.f800a).mo296d(obj, i);
        ((InterfaceC3295z1) this.f801b).mo296d(obj, i + ((int) ((InterfaceC3295z1) this.f800a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
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

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        ((InterfaceC3295z1) this.f800a).mo294g(obj);
        ((InterfaceC3295z1) this.f801b).mo294g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m371g(this, interfaceC2966m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f800a, this.f801b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
