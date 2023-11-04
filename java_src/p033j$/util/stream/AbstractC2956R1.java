package p033j$.util.stream;

import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.R1 */
/* loaded from: classes2.dex */
abstract class AbstractC2956R1 extends AbstractC2867C1 implements InterfaceC3152z1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2956R1(InterfaceC3152z1 interfaceC3152z1, InterfaceC3152z1 interfaceC3152z12) {
        super(interfaceC3152z1, interfaceC3152z12);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: d */
    public void mo342d(Object obj, int i) {
        ((InterfaceC3152z1) this.f840a).mo342d(obj, i);
        ((InterfaceC3152z1) this.f841b).mo342d(obj, i + ((int) ((InterfaceC3152z1) this.f840a).count()));
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: e */
    public Object mo341e() {
        long count = count();
        if (count < 2147483639) {
            Object mo343c = mo343c((int) count);
            mo342d(mo343c, 0);
            return mo343c;
        }
        throw new IllegalArgumentException("Stream size exceeds max array size");
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: g */
    public void mo340g(Object obj) {
        ((InterfaceC3152z1) this.f840a).mo340g(obj);
        ((InterfaceC3152z1) this.f841b).mo340g(obj);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo383p(IntFunction intFunction) {
        return AbstractC3086o1.m417g(this, intFunction);
    }

    public String toString() {
        return count() < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f840a, this.f841b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(count()));
    }
}
