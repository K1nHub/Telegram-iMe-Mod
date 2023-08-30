package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3280w4 extends AbstractC3298z4 implements InterfaceC2992s.InterfaceC2994b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3280w4(InterfaceC2992s.InterfaceC2994b interfaceC2994b, long j, long j2) {
        super(interfaceC2994b, j, j2);
    }

    C3280w4(InterfaceC2992s.InterfaceC2994b interfaceC2994b, long j, long j2, long j3, long j4) {
        super(interfaceC2994b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC3019D4
    /* renamed from: a */
    protected InterfaceC2992s mo299a(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4) {
        return new C3280w4((InterfaceC2992s.InterfaceC2994b) interfaceC2992s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3298z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2965l() { // from class: j$.util.stream.v4
            @Override // p033j$.util.function.InterfaceC2965l
            public final void accept(int i) {
            }

            @Override // p033j$.util.function.InterfaceC2965l
            /* renamed from: l */
            public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
                Objects.requireNonNull(interfaceC2965l);
                return new C2964k(this, interfaceC2965l);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }
}
