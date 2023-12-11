package p033j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c1 */
/* loaded from: classes2.dex */
public abstract class AbstractC3011c1 extends AbstractC3017d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3011c1(AbstractC3009c abstractC3009c, EnumC3026e4 enumC3026e4, int i) {
        super(abstractC3009c, i);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: F0 */
    final boolean mo488F0() {
        return false;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3023e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3009c, p033j$.util.stream.InterfaceC3033g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3023e1 sequential() {
        sequential();
        return this;
    }
}
