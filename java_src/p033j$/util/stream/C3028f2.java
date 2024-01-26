package p033j$.util.stream;

import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C3028f2 extends AbstractC3046i2 implements Spliterator.InterfaceC2771a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3028f2(InterfaceC3117u1 interfaceC3117u1) {
        super(interfaceC3117u1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m603f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m608a(this, consumer);
    }
}
