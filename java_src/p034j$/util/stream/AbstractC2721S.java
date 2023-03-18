package p034j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S */
/* loaded from: classes2.dex */
public abstract class AbstractC2721S extends AbstractC2726T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2721S(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i) {
        super(abstractC2774c, i);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: G0 */
    final boolean mo439G0() {
        return false;
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
