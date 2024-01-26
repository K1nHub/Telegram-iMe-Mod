package p033j$.util.stream;

import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2951R1 extends AbstractC2862C1 implements InterfaceC3147z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2951R1(InterfaceC3147z1 interfaceC3147z1, InterfaceC3147z1 interfaceC3147z12) {
        super(interfaceC3147z1, interfaceC3147z12);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: d */
    public void mo345d(Object obj, int i) {
        ((InterfaceC3147z1) this.f840a).mo345d(obj, i);
        ((InterfaceC3147z1) this.f841b).mo345d(obj, i + ((int) ((InterfaceC3147z1) this.f840a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        long count = count();
        if (count < 2147483639) {
            Object mo346c = mo346c((int) count);
            mo345d(mo346c, 0);
            return mo346c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: g */
    public void mo343g(Object obj) {
        ((InterfaceC3147z1) this.f840a).mo343g(obj);
        ((InterfaceC3147z1) this.f841b).mo343g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo386p(IntFunction intFunction) {
        return AbstractC3081o1.m420g(this, intFunction);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f840a, this.f841b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
