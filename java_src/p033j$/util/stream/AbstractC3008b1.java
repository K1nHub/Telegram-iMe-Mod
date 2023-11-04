package p033j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC3008b1 extends AbstractC3020d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3008b1(AbstractC3012c abstractC3012c, EnumC3029e4 enumC3029e4, int i) {
        super(abstractC3012c, i);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: F0 */
    final boolean mo488F0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3026e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3012c, p033j$.util.stream.InterfaceC3036g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3026e1 sequential() {
        sequential();
        return this;
    }
}
