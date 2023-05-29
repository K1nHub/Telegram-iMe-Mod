package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2710q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C2885a1 extends AbstractC2903d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2885a1(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        super(interfaceC2732s, i, z);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: G0 */
    final boolean mo424G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public final InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p034j$.util.stream.AbstractC2903d1, p034j$.util.stream.InterfaceC2909e1
    /* renamed from: Z */
    public void mo181Z(InterfaceC2710q interfaceC2710q) {
        if (!isParallel()) {
            AbstractC2903d1.m427L0(m435J0()).mo119d(interfaceC2710q);
            return;
        }
        Objects.requireNonNull(interfaceC2710q);
        m434x0(new C2956m0(interfaceC2710q, true));
    }

    @Override // p034j$.util.stream.AbstractC2903d1, p034j$.util.stream.InterfaceC2909e1
    /* renamed from: d */
    public void mo180d(InterfaceC2710q interfaceC2710q) {
        if (isParallel()) {
            super.mo180d(interfaceC2710q);
        } else {
            AbstractC2903d1.m427L0(m435J0()).mo119d(interfaceC2710q);
        }
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2909e1 parallel() {
        parallel();
        return this;
    }

    @Override // p034j$.util.stream.AbstractC2895c, p034j$.util.stream.InterfaceC2919g, p034j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC2909e1 sequential() {
        sequential();
        return this;
    }
}
