package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C3006a1 extends AbstractC3024d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3006a1(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        super(interfaceC2853s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public final InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3024d1, p033j$.util.stream.InterfaceC3030e1
    /* renamed from: Z */
    public void mo199Z(InterfaceC2831q interfaceC2831q) {
        if (!isParallel()) {
            AbstractC3024d1.m445L0(m453J0()).mo137d(interfaceC2831q);
            return;
        }
        Objects.requireNonNull(interfaceC2831q);
        m452x0(new C3077m0(interfaceC2831q, true));
    }

    @Override // p033j$.util.stream.AbstractC3024d1, p033j$.util.stream.InterfaceC3030e1
    /* renamed from: d */
    public void mo198d(InterfaceC2831q interfaceC2831q) {
        if (isParallel()) {
            super.mo198d(interfaceC2831q);
        } else {
            AbstractC3024d1.m445L0(m453J0()).mo137d(interfaceC2831q);
        }
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3030e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3016c, p033j$.util.stream.InterfaceC3040g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3030e1 sequential() {
        sequential();
        return this;
    }
}
