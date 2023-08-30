package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2970q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C3145a1 extends AbstractC3163d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3145a1(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        super(interfaceC2992s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public final InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3163d1, p033j$.util.stream.InterfaceC3169e1
    /* renamed from: Z */
    public void mo199Z(InterfaceC2970q interfaceC2970q) {
        if (!isParallel()) {
            AbstractC3163d1.m445L0(m453J0()).mo137d(interfaceC2970q);
            return;
        }
        Objects.requireNonNull(interfaceC2970q);
        m452x0(new C3216m0(interfaceC2970q, true));
    }

    @Override // p033j$.util.stream.AbstractC3163d1, p033j$.util.stream.InterfaceC3169e1
    /* renamed from: d */
    public void mo198d(InterfaceC2970q interfaceC2970q) {
        if (isParallel()) {
            super.mo198d(interfaceC2970q);
        } else {
            AbstractC3163d1.m445L0(m453J0()).mo137d(interfaceC2970q);
        }
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3169e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3169e1 sequential() {
        sequential();
        return this;
    }
}
