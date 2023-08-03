package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C3077m0 extends AbstractC3089o0 implements InterfaceC3074l3 {

    /* renamed from: b */
    final InterfaceC2831q f1080b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3077m0(InterfaceC2831q interfaceC2831q, boolean z) {
        super(z);
        this.f1080b = interfaceC2831q;
    }

    @Override // p033j$.util.stream.AbstractC3089o0, p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.f1080b.accept(j);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }
}
