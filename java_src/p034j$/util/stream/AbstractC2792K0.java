package p034j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.K0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2792K0 extends AbstractC2798L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2792K0(AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i) {
        super(abstractC2890c, i);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: G0 */
    final boolean mo424G0() {
        return false;
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2890c, p034j$.util.stream.InterfaceC2914g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}