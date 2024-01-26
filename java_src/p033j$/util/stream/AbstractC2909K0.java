package p033j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.K0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2909K0 extends AbstractC2915L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2909K0(AbstractC3007c abstractC3007c, EnumC3024e4 enumC3024e4, int i) {
        super(abstractC3007c, i);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: F0 */
    final boolean mo491F0() {
        return false;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3007c, p033j$.util.stream.InterfaceC3031g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
