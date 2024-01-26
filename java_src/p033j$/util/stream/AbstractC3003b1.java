package p033j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC3003b1 extends AbstractC3015d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3003b1(AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i) {
        super(abstractC3007c, i);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: F0 */
    final boolean mo491F0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3021e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3021e1 sequential() {
        sequential();
        return this;
    }
}
