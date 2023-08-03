package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.y4 */
/* loaded from: classes2.dex */
final class C3153y4 extends AbstractC3159z4 implements InterfaceC2853s.InterfaceC2856c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3153y4(InterfaceC2853s.InterfaceC2856c interfaceC2856c, long j, long j2) {
        super(interfaceC2856c, j, j2);
    }

    C3153y4(InterfaceC2853s.InterfaceC2856c interfaceC2856c, long j, long j2, long j3, long j4) {
        super(interfaceC2856c, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2880D4
    /* renamed from: a */
    protected InterfaceC2853s mo299a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        return new C3153y4((InterfaceC2853s.InterfaceC2856c) interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m617l(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3159z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2831q() { // from class: j$.util.stream.x4
            @Override // p033j$.util.function.InterfaceC2831q
            public final void accept(long j) {
            }

            @Override // p033j$.util.function.InterfaceC2831q
            /* renamed from: f */
            public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
                Objects.requireNonNull(interfaceC2831q);
                return new C2830p(this, interfaceC2831q);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m625d(this, consumer);
    }
}
