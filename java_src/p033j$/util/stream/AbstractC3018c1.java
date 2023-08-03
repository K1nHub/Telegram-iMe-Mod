package p033j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3018c1 extends AbstractC3024d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3018c1(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i) {
        super(abstractC3016c, i);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: G0 */
    final boolean mo442G0() {
        return false;
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
