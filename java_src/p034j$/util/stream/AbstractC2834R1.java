package p034j$.util.stream;

import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2834R1 extends AbstractC2745C1 implements InterfaceC3030z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2834R1(InterfaceC3030z1 interfaceC3030z1, InterfaceC3030z1 interfaceC3030z12) {
        super(interfaceC3030z1, interfaceC3030z12);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        ((InterfaceC3030z1) this.f705a).mo278d(obj, i);
        ((InterfaceC3030z1) this.f706b).mo278d(obj, i + ((int) ((InterfaceC3030z1) this.f705a).count()));
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
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

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        ((InterfaceC3030z1) this.f705a).mo276g(obj);
        ((InterfaceC3030z1) this.f706b).mo276g(obj);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo319q(InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m353g(this, interfaceC2701m);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f705a, this.f706b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
