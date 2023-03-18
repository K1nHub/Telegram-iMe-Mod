package p034j$.util.stream;
/* renamed from: j$.util.stream.J0 */
/* loaded from: classes2.dex */
abstract class AbstractC2670J0 extends AbstractC2682L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2670J0(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i) {
        super(abstractC2774c, i);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: G0 */
    final boolean mo439G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
