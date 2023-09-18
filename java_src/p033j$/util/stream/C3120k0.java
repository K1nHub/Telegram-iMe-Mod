package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3120k0 extends AbstractC3144o0 implements InterfaceC3117j3 {

    /* renamed from: b */
    final InterfaceC2875f f1063b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3120k0(InterfaceC2875f interfaceC2875f, boolean z) {
        super(z);
        this.f1063b = interfaceC2875f;
    }

    @Override // p033j$.util.stream.AbstractC3144o0, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        this.f1063b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
