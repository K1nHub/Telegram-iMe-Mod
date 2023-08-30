package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2965l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.I0 */
/* loaded from: classes2.dex */
public class C3045I0 extends AbstractC3063L0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3045I0(InterfaceC2992s interfaceC2992s, int i, boolean z) {
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

    @Override // p033j$.util.stream.AbstractC3063L0, p033j$.util.stream.IntStream
    /* renamed from: I */
    public void mo282I(InterfaceC2965l interfaceC2965l) {
        if (!isParallel()) {
            AbstractC3063L0.m515L0(m453J0()).mo143c(interfaceC2965l);
            return;
        }
        Objects.requireNonNull(interfaceC2965l);
        m452x0(new C3210l0(interfaceC2965l, true));
    }

    @Override // p033j$.util.stream.AbstractC3063L0, p033j$.util.stream.IntStream
    /* renamed from: U */
    public void mo278U(InterfaceC2965l interfaceC2965l) {
        if (isParallel()) {
            super.mo278U(interfaceC2965l);
        } else {
            AbstractC3063L0.m515L0(m453J0()).mo143c(interfaceC2965l);
        }
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // p033j$.util.stream.AbstractC3155c, p033j$.util.stream.InterfaceC3179g, p033j$.util.stream.IntStream
    public /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
