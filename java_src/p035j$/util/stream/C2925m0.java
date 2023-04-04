package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2925m0 extends AbstractC2937o0 implements InterfaceC2922l3 {

    /* renamed from: b */
    final InterfaceC2679q f997b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2925m0(InterfaceC2679q interfaceC2679q, boolean z) {
        super(z);
        this.f997b = interfaceC2679q;
    }

    @Override // p035j$.util.stream.AbstractC2937o0, p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        this.f997b.accept(j);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }
}
