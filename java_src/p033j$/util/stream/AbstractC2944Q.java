package p033j$.util.stream;
/* renamed from: j$.util.stream.Q */
/* loaded from: classes2.dex */
abstract class AbstractC2944Q extends AbstractC2959T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2944Q(AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i) {
        super(abstractC3007c, i);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: F0 */
    final boolean mo491F0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2964U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2964U sequential() {
        sequential();
        return this;
    }
}
