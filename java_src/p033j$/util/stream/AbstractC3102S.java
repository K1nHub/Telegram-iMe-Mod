package p033j$.util.stream;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.S */
/* loaded from: classes2.dex */
public abstract class AbstractC3102S extends AbstractC3107T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3102S(AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i) {
        super(abstractC3155c, i);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: G0 */
    final boolean mo442G0() {
        return false;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3112U parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3112U sequential() {
        sequential();
        return this;
    }
}
