package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3204k0 extends AbstractC3228o0 implements InterfaceC3201j3 {

    /* renamed from: b */
    final InterfaceC2959f f1072b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3204k0(InterfaceC2959f interfaceC2959f, boolean z) {
        super(z);
        this.f1072b = interfaceC2959f;
    }

    @Override // p033j$.util.stream.AbstractC3228o0, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        this.f1072b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
