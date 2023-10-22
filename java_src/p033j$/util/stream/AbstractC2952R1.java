package p033j$.util.stream;

import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2952R1 extends AbstractC2863C1 implements InterfaceC3148z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2952R1(InterfaceC3148z1 interfaceC3148z1, InterfaceC3148z1 interfaceC3148z12) {
        super(interfaceC3148z1, interfaceC3148z12);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: d */
    public void mo341d(Object obj, int i) {
        ((InterfaceC3148z1) this.f840a).mo341d(obj, i);
        ((InterfaceC3148z1) this.f841b).mo341d(obj, i + ((int) ((InterfaceC3148z1) this.f840a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        long count = count();
        if (count < 2147483639) {
            Object mo342c = mo342c((int) count);
            mo341d(mo342c, 0);
            return mo342c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: g */
    public void mo339g(Object obj) {
        ((InterfaceC3148z1) this.f840a).mo339g(obj);
        ((InterfaceC3148z1) this.f841b).mo339g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo382p(IntFunction intFunction) {
        return AbstractC3082o1.m416g(this, intFunction);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f840a, this.f841b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
