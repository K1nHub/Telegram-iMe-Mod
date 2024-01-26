package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j1 */
/* loaded from: classes2.dex */
abstract class AbstractC3051j1 implements InterfaceC3071m3 {

    /* renamed from: a */
    boolean f1108a;

    /* renamed from: b */
    boolean f1109b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3051j1(EnumC3057k1 enumC3057k1) {
        boolean z;
        z = enumC3057k1.f1115b;
        this.f1109b = !z;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public /* synthetic */ void mo364m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public boolean mo363o() {
        return this.f1108a;
    }
}
