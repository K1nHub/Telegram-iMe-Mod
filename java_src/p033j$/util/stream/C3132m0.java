package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2886q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3132m0 extends AbstractC3144o0 implements InterfaceC3129l3 {

    /* renamed from: b */
    final InterfaceC2886q f1081b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3132m0(InterfaceC2886q interfaceC2886q, boolean z) {
        super(z);
        this.f1081b = interfaceC2886q;
    }

    @Override // p033j$.util.stream.AbstractC3144o0, p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.f1081b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3145o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }
}
