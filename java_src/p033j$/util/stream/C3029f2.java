package p033j$.util.stream;

import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C3029f2 extends AbstractC3047i2 implements Spliterator.InterfaceC2772a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3029f2(InterfaceC3118u1 interfaceC3118u1) {
        super(interfaceC3118u1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m599f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m604a(this, consumer);
    }
}
