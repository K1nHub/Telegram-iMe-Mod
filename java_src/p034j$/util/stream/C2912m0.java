package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2666q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m0 */
/* loaded from: classes2.dex */
public final class C2912m0 extends AbstractC2924o0 implements InterfaceC2909l3 {

    /* renamed from: b */
    final InterfaceC2666q f992b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2912m0(InterfaceC2666q interfaceC2666q, boolean z) {
        super(z);
        this.f992b = interfaceC2666q;
    }

    @Override // p034j$.util.stream.AbstractC2924o0, p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        this.f992b.accept(j);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Long l) {
        AbstractC2925o1.m352c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }
}
