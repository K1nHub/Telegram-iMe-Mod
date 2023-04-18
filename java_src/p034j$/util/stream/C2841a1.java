package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2666q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2841a1 extends AbstractC2859d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2841a1(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        super(interfaceC2688s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: G0 */
    final boolean mo419G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public final InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2859d1, p034j$.util.stream.InterfaceC2865e1
    /* renamed from: Z */
    public void mo176Z(InterfaceC2666q interfaceC2666q) {
        if (!isParallel()) {
            AbstractC2859d1.m422L0(m430J0()).mo114d(interfaceC2666q);
            return;
        }
        Objects.requireNonNull(interfaceC2666q);
        m429x0(new C2912m0(interfaceC2666q, true));
    }

    @Override // p034j$.util.stream.AbstractC2859d1, p034j$.util.stream.InterfaceC2865e1
    /* renamed from: d */
    public void mo175d(InterfaceC2666q interfaceC2666q) {
        if (isParallel()) {
            super.mo175d(interfaceC2666q);
        } else {
            AbstractC2859d1.m422L0(m430J0()).mo114d(interfaceC2666q);
        }
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2865e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2851c, p034j$.util.stream.InterfaceC2875g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2865e1 sequential() {
        sequential();
        return this;
    }
}
