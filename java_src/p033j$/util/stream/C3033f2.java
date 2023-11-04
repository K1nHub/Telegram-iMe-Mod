package p033j$.util.stream;

import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C3033f2 extends AbstractC3051i2 implements Spliterator.InterfaceC2776a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3033f2(InterfaceC3122u1 interfaceC3122u1) {
        super(interfaceC3122u1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m605a(this, consumer);
    }
}
