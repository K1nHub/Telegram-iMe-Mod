package p033j$.util.stream;

import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.g2 */
/* loaded from: classes2.dex */
final class C3036g2 extends AbstractC3048i2 implements Spliterator.InterfaceC2774b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3036g2(InterfaceC3131w1 interfaceC3131w1) {
        super(interfaceC3131w1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m604b(this, consumer);
    }
}
