package p034j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC2770b1 extends AbstractC2782d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2770b1(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i) {
        super(abstractC2774c, i);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: G0 */
    final boolean mo439G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2788e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2774c, p034j$.util.stream.InterfaceC2798g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2788e1 sequential() {
        sequential();
        return this;
    }
}
