package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3208y4 extends AbstractC3214z4 implements InterfaceC2908s.InterfaceC2911c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3208y4(InterfaceC2908s.InterfaceC2911c interfaceC2911c, long j, long j2) {
        super(interfaceC2911c, j, j2);
    }

    C3208y4(InterfaceC2908s.InterfaceC2911c interfaceC2911c, long j, long j2, long j3, long j4) {
        super(interfaceC2911c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2935D4
    /* renamed from: a */
    protected InterfaceC2908s mo299a(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4) {
        return new C3208y4((InterfaceC2908s.InterfaceC2911c) interfaceC2908s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m617l(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3214z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2886q() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2886q
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2886q
            /* renamed from: f */
            public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
                Objects.requireNonNull(interfaceC2886q);
                return new C2885p(this, interfaceC2886q);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m625d(this, consumer);
    }
}
