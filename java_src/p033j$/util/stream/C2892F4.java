package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2892F4 extends AbstractC2904H4 implements InterfaceC2853s.InterfaceC2855b, InterfaceC2826l {

    /* renamed from: e */
    int f827e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2892F4(InterfaceC2853s.InterfaceC2855b interfaceC2855b, long j, long j2) {
        super(interfaceC2855b, j, j2);
    }

    C2892F4(InterfaceC2853s.InterfaceC2855b interfaceC2855b, C2892F4 c2892f4) {
        super(interfaceC2855b, c2892f4);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        this.f827e = i;
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m626c(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.AbstractC2916J4
    /* renamed from: q */
    protected InterfaceC2853s mo517q(InterfaceC2853s interfaceC2853s) {
        return new C2892F4((InterfaceC2853s.InterfaceC2855b) interfaceC2853s, this);
    }

    @Override // p033j$.util.stream.AbstractC2904H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2826l) obj).accept(this.f827e);
    }

    @Override // p033j$.util.stream.AbstractC2904H4
    /* renamed from: t */
    protected AbstractC3063j4 mo519t(int i) {
        return new C3051h4(i);
    }
}
