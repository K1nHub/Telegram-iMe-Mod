package p033j$.util.stream;

import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.f2 */
/* loaded from: classes2.dex */
final class C3176f2 extends AbstractC3194i2 implements InterfaceC2992s.InterfaceC2993a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3176f2(InterfaceC3265u1 interfaceC3265u1) {
        super(interfaceC3265u1);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
    }
}
