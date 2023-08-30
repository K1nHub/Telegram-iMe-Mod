package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C3031F4 extends AbstractC3043H4 implements InterfaceC2992s.InterfaceC2994b, InterfaceC2965l {

    /* renamed from: e */
    int f837e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3031F4(InterfaceC2992s.InterfaceC2994b interfaceC2994b, long j, long j2) {
        super(interfaceC2994b, j, j2);
    }

    C3031F4(InterfaceC2992s.InterfaceC2994b interfaceC2994b, C3031F4 c3031f4) {
        super(interfaceC2994b, c3031f4);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    public void accept(int i) {
        this.f837e = i;
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    @Override // p033j$.util.stream.AbstractC3055J4
    /* renamed from: q */
    protected InterfaceC2992s mo517q(InterfaceC2992s interfaceC2992s) {
        return new C3031F4((InterfaceC2992s.InterfaceC2994b) interfaceC2992s, this);
    }

    @Override // p033j$.util.stream.AbstractC3043H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2965l) obj).accept(this.f837e);
    }

    @Override // p033j$.util.stream.AbstractC3043H4
    /* renamed from: t */
    protected AbstractC3202j4 mo519t(int i) {
        return new C3190h4(i);
    }
}
