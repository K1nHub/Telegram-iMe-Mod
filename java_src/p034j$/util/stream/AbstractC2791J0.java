package p034j$.util.stream;
/* renamed from: j$.util.stream.J0 */
/* loaded from: classes2.dex */
abstract class AbstractC2791J0 extends AbstractC2803L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2791J0(AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i) {
        super(abstractC2895c, i);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: G0 */
    final boolean mo424G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
