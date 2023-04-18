package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2849b3 extends AbstractC2867e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2849b3(InterfaceC2688s interfaceC2688s, int i, boolean z) {
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

    @Override // p034j$.util.stream.AbstractC2867e3, p034j$.util.stream.Stream
    /* renamed from: e */
    public void mo237e(Consumer consumer) {
        if (!isParallel()) {
            m430J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m429x0(new C2918n0(consumer, true));
    }

    @Override // p034j$.util.stream.AbstractC2867e3, p034j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m430J0().forEachRemaining(consumer);
        }
    }
}
