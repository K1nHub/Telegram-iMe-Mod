package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3292y4 extends AbstractC3298z4 implements InterfaceC2992s.InterfaceC2995c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3292y4(InterfaceC2992s.InterfaceC2995c interfaceC2995c, long j, long j2) {
        super(interfaceC2995c, j, j2);
    }

    C3292y4(InterfaceC2992s.InterfaceC2995c interfaceC2995c, long j, long j2, long j3, long j4) {
        super(interfaceC2995c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC3019D4
    /* renamed from: a */
    protected InterfaceC2992s mo299a(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4) {
        return new C3292y4((InterfaceC2992s.InterfaceC2995c) interfaceC2992s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m617l(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3298z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2970q() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2970q
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2970q
            /* renamed from: f */
            public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
                Objects.requireNonNull(interfaceC2970q);
                return new C2969p(this, interfaceC2970q);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m625d(this, consumer);
    }
}
