package p035j$.util.stream;

import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C2885f2 extends AbstractC2903i2 implements InterfaceC2701s.InterfaceC2702a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2885f2(InterfaceC2974u1 interfaceC2974u1) {
        super(interfaceC2974u1);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
    }
}
