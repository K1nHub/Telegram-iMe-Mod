package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2939k0 extends AbstractC2963o0 implements InterfaceC2936j3 {

    /* renamed from: b */
    final InterfaceC2694f f977b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939k0(InterfaceC2694f interfaceC2694f, boolean z) {
        super(z);
        this.f977b = interfaceC2694f;
    }

    @Override // p034j$.util.stream.AbstractC2963o0, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        this.f977b.accept(d);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2964o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
