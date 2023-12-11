package p033j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.K0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2911K0 extends AbstractC2917L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2911K0(AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i) {
        super(abstractC3009c, i);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: F0 */
    final boolean mo488F0() {
        return false;
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
