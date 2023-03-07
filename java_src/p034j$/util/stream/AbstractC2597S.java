package p034j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S */
/* loaded from: classes2.dex */
public abstract class AbstractC2597S extends AbstractC2602T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2597S(AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i) {
        super(abstractC2650c, i);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: G0 */
    final boolean mo439G0() {
        return false;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2607U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2650c, p034j$.util.stream.InterfaceC2674g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2607U sequential() {
        sequential();
        return this;
    }
}
