package p034j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC2784b1 extends AbstractC2796d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2784b1(AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i) {
        super(abstractC2788c, i);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: G0 */
    final boolean mo438G0() {
        return true;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2802e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2788c, p034j$.util.stream.InterfaceC2812g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2802e1 sequential() {
        sequential();
        return this;
    }
}
