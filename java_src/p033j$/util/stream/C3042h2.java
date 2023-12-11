package p033j$.util.stream;

import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.h2 */
/* loaded from: classes2.dex */
final class C3042h2 extends AbstractC3048i2 implements Spliterator.InterfaceC2775c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3042h2(InterfaceC3143y1 interfaceC3143y1) {
        super(interfaceC3143y1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m598h(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m603c(this, consumer);
    }
}
