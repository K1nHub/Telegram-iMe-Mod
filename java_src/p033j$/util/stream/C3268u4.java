package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3268u4 extends AbstractC3298z4 implements InterfaceC2992s.InterfaceC2993a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3268u4(InterfaceC2992s.InterfaceC2993a interfaceC2993a, long j, long j2) {
        super(interfaceC2993a, j, j2);
    }

    C3268u4(InterfaceC2992s.InterfaceC2993a interfaceC2993a, long j, long j2, long j3, long j4) {
        super(interfaceC2993a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC3019D4
    /* renamed from: a */
    protected InterfaceC2992s mo299a(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4) {
        return new C3268u4((InterfaceC2992s.InterfaceC2993a) interfaceC2992s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3298z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2959f() { // from class: j$.util.stream.t4
            @Override // p033j$.util.function.InterfaceC2959f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2959f
            /* renamed from: j */
            public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
                Objects.requireNonNull(interfaceC2959f);
                return new C2958e(this, interfaceC2959f);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
    }
}
