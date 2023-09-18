package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.u4 */
/* loaded from: classes2.dex */
final class C3184u4 extends AbstractC3214z4 implements InterfaceC2908s.InterfaceC2909a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3184u4(InterfaceC2908s.InterfaceC2909a interfaceC2909a, long j, long j2) {
        super(interfaceC2909a, j, j2);
    }

    C3184u4(InterfaceC2908s.InterfaceC2909a interfaceC2909a, long j, long j2, long j3, long j4) {
        super(interfaceC2909a, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2935D4
    /* renamed from: a */
    protected InterfaceC2908s mo299a(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4) {
        return new C3184u4((InterfaceC2908s.InterfaceC2909a) interfaceC2908s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m619j(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3214z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2875f() { // from class: j$.util.stream.t4
            @Override // p033j$.util.function.InterfaceC2875f
            public final void accept(double d) {
            }

            @Override // p033j$.util.function.InterfaceC2875f
            /* renamed from: j */
            public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
                Objects.requireNonNull(interfaceC2875f);
                return new C2874e(this, interfaceC2875f);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m627b(this, consumer);
    }
}
