package p034j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC2891b1 extends AbstractC2903d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2891b1(AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i) {
        super(abstractC2895c, i);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: G0 */
    final boolean mo424G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2909e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2909e1 sequential() {
        sequential();
        return this;
    }
}
