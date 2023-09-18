package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.w4 */
/* loaded from: classes2.dex */
final class C3196w4 extends AbstractC3214z4 implements InterfaceC2908s.InterfaceC2910b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3196w4(InterfaceC2908s.InterfaceC2910b interfaceC2910b, long j, long j2) {
        super(interfaceC2910b, j, j2);
    }

    C3196w4(InterfaceC2908s.InterfaceC2910b interfaceC2910b, long j, long j2, long j3, long j4) {
        super(interfaceC2910b, j, j2, j3, j4, null);
    }

    @Override // p033j$.util.stream.AbstractC2935D4
    /* renamed from: a */
    protected InterfaceC2908s mo299a(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4) {
        return new C3196w4((InterfaceC2908s.InterfaceC2910b) interfaceC2908s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m618k(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3214z4
    /* renamed from: f */
    protected /* bridge */ /* synthetic */ Object mo289f() {
        return new InterfaceC2881l() { // from class: j$.util.stream.v4
            @Override // p033j$.util.function.InterfaceC2881l
            public final void accept(int i) {
            }

            @Override // p033j$.util.function.InterfaceC2881l
            /* renamed from: l */
            public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
                Objects.requireNonNull(interfaceC2881l);
                return new C2880k(this, interfaceC2881l);
            }
        };
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m626c(this, consumer);
    }
}
