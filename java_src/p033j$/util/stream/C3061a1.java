package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2886q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.a1 */
/* loaded from: classes2.dex */
public class C3061a1 extends AbstractC3079d1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3061a1(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        super(interfaceC2908s, i, z);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: G0 */
    final boolean mo442G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public final InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p033j$.util.stream.AbstractC3079d1, p033j$.util.stream.InterfaceC3085e1
    /* renamed from: Z */
    public void mo199Z(InterfaceC2886q interfaceC2886q) {
        if (!isParallel()) {
            AbstractC3079d1.m445L0(m453J0()).mo137d(interfaceC2886q);
            return;
        }
        Objects.requireNonNull(interfaceC2886q);
        m452x0(new C3132m0(interfaceC2886q, true));
    }

    @Override // p033j$.util.stream.AbstractC3079d1, p033j$.util.stream.InterfaceC3085e1
    /* renamed from: d */
    public void mo198d(InterfaceC2886q interfaceC2886q) {
        if (isParallel()) {
            super.mo198d(interfaceC2886q);
        } else {
            AbstractC3079d1.m445L0(m453J0()).mo137d(interfaceC2886q);
        }
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3085e1 parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3071c, p033j$.util.stream.InterfaceC3095g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ InterfaceC3085e1 sequential() {
        sequential();
        return this;
    }
}
