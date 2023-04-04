package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b3 */
/* loaded from: classes2.dex */
public class C2862b3 extends AbstractC2880e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2862b3(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        super(interfaceC2701s, i, z);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: G0 */
    final boolean mo433G0() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public final InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        throw new UnsupportedOperationException();
    }

    @Override // p035j$.util.stream.AbstractC2880e3, p035j$.util.stream.Stream
    /* renamed from: e */
    public void mo251e(Consumer consumer) {
        if (!isParallel()) {
            m444J0().forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        m443x0(new C2931n0(consumer, true));
    }

    @Override // p035j$.util.stream.AbstractC2880e3, p035j$.util.stream.Stream
    public void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            m444J0().forEachRemaining(consumer);
        }
    }
}
