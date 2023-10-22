package p033j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC3004b1 extends AbstractC3016d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3004b1(AbstractC3008c abstractC3008c, EnumC3025e4 enumC3025e4, int i) {
        super(abstractC3008c, i);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: F0 */
    final boolean mo487F0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3022e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3008c, p033j$.util.stream.InterfaceC3032g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3022e1 sequential() {
        sequential();
        return this;
    }
}
