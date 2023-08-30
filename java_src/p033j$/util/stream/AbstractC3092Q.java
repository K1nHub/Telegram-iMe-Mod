package p033j$.util.stream;
/* renamed from: j$.util.stream.Q */
/* loaded from: classes2.dex */
abstract class AbstractC3092Q extends AbstractC3107T {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3092Q(AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i) {
        super(abstractC3155c, i);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: G0 */
    final boolean mo442G0() {
        return true;
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
