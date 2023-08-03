package p033j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC3012b1 extends AbstractC3024d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3012b1(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i) {
        super(abstractC3016c, i);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: G0 */
    final boolean mo442G0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3030e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3030e1 sequential() {
        sequential();
        return this;
    }
}
