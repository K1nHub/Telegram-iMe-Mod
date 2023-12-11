package p033j$.util.stream;

import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C3030f2 extends AbstractC3048i2 implements Spliterator.InterfaceC2773a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3030f2(InterfaceC3119u1 interfaceC3119u1) {
        super(interfaceC3119u1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m605a(this, consumer);
    }
}
