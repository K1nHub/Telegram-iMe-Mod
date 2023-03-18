package p034j$.util.stream;
/* renamed from: j$.util.stream.Q */
/* loaded from: classes2.dex */
abstract class AbstractC2711Q extends AbstractC2726T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2711Q(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i) {
        super(abstractC2774c, i);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: G0 */
    final boolean mo439G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2731U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2731U sequential() {
        sequential();
        return this;
    }
}
