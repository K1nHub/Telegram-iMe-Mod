package p033j$.util.stream;
/* renamed from: j$.util.stream.J0 */
/* loaded from: classes2.dex */
abstract class AbstractC2905J0 extends AbstractC2917L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2905J0(AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i) {
        super(abstractC3009c, i);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: F0 */
    final boolean mo488F0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
