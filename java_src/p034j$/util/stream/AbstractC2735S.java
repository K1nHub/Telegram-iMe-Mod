package p034j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S */
/* loaded from: classes2.dex */
public abstract class AbstractC2735S extends AbstractC2740T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2735S(AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i) {
        super(abstractC2788c, i);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: G0 */
    final boolean mo438G0() {
        return false;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2745U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2745U sequential() {
        sequential();
        return this;
    }
}
