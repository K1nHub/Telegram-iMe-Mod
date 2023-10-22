package p033j$.util.stream;

import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j1 */
/* loaded from: classes2.dex */
abstract class AbstractC3052j1 implements InterfaceC3072m3 {

    /* renamed from: a */
    boolean f1108a;

    /* renamed from: b */
    boolean f1109b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3052j1(EnumC3058k1 enumC3058k1) {
        boolean z;
        z = enumC3058k1.f1115b;
        this.f1109b = !z;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public /* synthetic */ void mo360m(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public boolean mo359o() {
        return this.f1108a;
    }
}
