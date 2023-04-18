package p034j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S */
/* loaded from: classes2.dex */
public abstract class AbstractC2798S extends AbstractC2803T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2798S(AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i) {
        super(abstractC2851c, i);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: G0 */
    final boolean mo419G0() {
        return false;
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2808U parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2808U sequential() {
        sequential();
        return this;
    }
}
