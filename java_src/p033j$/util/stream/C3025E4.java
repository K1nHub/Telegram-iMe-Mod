package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C3025E4 extends AbstractC3043H4 implements InterfaceC2992s.InterfaceC2993a, InterfaceC2959f {

    /* renamed from: e */
    double f826e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3025E4(InterfaceC2992s.InterfaceC2993a interfaceC2993a, long j, long j2) {
        super(interfaceC2993a, j, j2);
    }

    C3025E4(InterfaceC2992s.InterfaceC2993a interfaceC2993a, C3025E4 c3025e4) {
        super(interfaceC2993a, c3025e4);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public void accept(double d) {
        this.f826e = d;
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    @Override // p033j$.util.stream.AbstractC3055J4
    /* renamed from: q */
    protected InterfaceC2992s mo517q(InterfaceC2992s interfaceC2992s) {
        return new C3025E4((InterfaceC2992s.InterfaceC2993a) interfaceC2992s, this);
    }

    @Override // p033j$.util.stream.AbstractC3043H4
    /* renamed from: s */
    protected void mo520s(Object obj) {
        ((InterfaceC2959f) obj).accept(this.f826e);
    }

    @Override // p033j$.util.stream.AbstractC3043H4
    /* renamed from: t */
    protected AbstractC3202j4 mo519t(int i) {
        return new C3184g4(i);
    }
}
