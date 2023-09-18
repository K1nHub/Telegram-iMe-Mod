package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2880k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2947F4 extends AbstractC2959H4 implements InterfaceC2908s.InterfaceC2910b, InterfaceC2881l {

    /* renamed from: e */
    int f828e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2947F4(InterfaceC2908s.InterfaceC2910b interfaceC2910b, long j, long j2) {
        super(interfaceC2910b, j, j2);
    }

    C2947F4(InterfaceC2908s.InterfaceC2910b interfaceC2910b, C2947F4 c2947f4) {
        super(interfaceC2910b, c2947f4);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    public void accept(int i) {
        this.f828e = i;
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m626c(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }

    @Override // p033j$.util.stream.AbstractC2971J4
    /* renamed from: q */
    protected InterfaceC2908s mo517q(InterfaceC2908s interfaceC2908s) {
        return new C2947F4((InterfaceC2908s.InterfaceC2910b) interfaceC2908s, this);
    }

    @Override // p033j$.util.stream.AbstractC2959H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2881l) obj).accept(this.f828e);
    }

    @Override // p033j$.util.stream.AbstractC2959H4
    /* renamed from: t */
    protected AbstractC3118j4 mo519t(int i) {
        return new C3106h4(i);
    }
}
