package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C2837k0 extends AbstractC2861o0 implements InterfaceC2834j3 {

    /* renamed from: b */
    final InterfaceC2592f f974b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2837k0(InterfaceC2592f interfaceC2592f, boolean z) {
        super(z);
        this.f974b = interfaceC2592f;
    }

    @Override // p034j$.util.stream.AbstractC2861o0, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        this.f974b.accept(d);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
