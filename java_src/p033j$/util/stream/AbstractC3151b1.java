package p033j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC3151b1 extends AbstractC3163d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3151b1(AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i) {
        super(abstractC3155c, i);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: G0 */
    final boolean mo442G0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3169e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3169e1 sequential() {
        sequential();
        return this;
    }
}
