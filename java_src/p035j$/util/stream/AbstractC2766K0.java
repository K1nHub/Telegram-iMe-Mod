package p035j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.K0 */
/* loaded from: classes2.dex */
public abstract class AbstractC2766K0 extends AbstractC2772L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2766K0(AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i) {
        super(abstractC2864c, i);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: G0 */
    final boolean mo433G0() {
        return false;
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p035j$.util.stream.AbstractC2864c, p035j$.util.stream.InterfaceC2888g, p035j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
