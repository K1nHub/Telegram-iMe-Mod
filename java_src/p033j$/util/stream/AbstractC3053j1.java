package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j1 */
/* loaded from: classes2.dex */
abstract class AbstractC3053j1 implements InterfaceC3073m3 {

    /* renamed from: a */
    boolean f1108a;

    /* renamed from: b */
    boolean f1109b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3053j1(EnumC3059k1 enumC3059k1) {
        boolean z;
        z = enumC3059k1.f1115b;
        this.f1109b = !z;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public /* synthetic */ void mo361m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public boolean mo360o() {
        return this.f1108a;
    }
}
