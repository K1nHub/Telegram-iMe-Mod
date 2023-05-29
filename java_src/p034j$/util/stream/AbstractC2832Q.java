package p034j$.util.stream;
/* renamed from: j$.util.stream.Q */
/* loaded from: classes2.dex */
abstract class AbstractC2832Q extends AbstractC2847T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2832Q(AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i) {
        super(abstractC2895c, i);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: G0 */
    final boolean mo424G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2852U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2852U sequential() {
        sequential();
        return this;
    }
}
