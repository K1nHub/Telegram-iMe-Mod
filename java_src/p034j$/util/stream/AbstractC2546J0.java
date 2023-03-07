package p034j$.util.stream;
/* renamed from: j$.util.stream.J0 */
/* loaded from: classes2.dex */
abstract class AbstractC2546J0 extends AbstractC2558L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2546J0(AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i) {
        super(abstractC2650c, i);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: G0 */
    final boolean mo439G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
