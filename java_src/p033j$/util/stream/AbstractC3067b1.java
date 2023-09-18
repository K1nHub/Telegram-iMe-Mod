package p033j$.util.stream;
/* renamed from: j$.util.stream.b1 */
/* loaded from: classes2.dex */
abstract class AbstractC3067b1 extends AbstractC3079d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3067b1(AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i) {
        super(abstractC3071c, i);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: G0 */
    final boolean mo442G0() {
        return true;
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3085e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3085e1 sequential() {
        sequential();
        return this;
    }
}
