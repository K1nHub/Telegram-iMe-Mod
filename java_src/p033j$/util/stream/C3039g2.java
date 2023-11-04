package p033j$.util.stream;

import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C3039g2 extends AbstractC3051i2 implements Spliterator.InterfaceC2777b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3039g2(InterfaceC3134w1 interfaceC3134w1) {
        super(interfaceC3134w1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m604b(this, consumer);
    }
}
