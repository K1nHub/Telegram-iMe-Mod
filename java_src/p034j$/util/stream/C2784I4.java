package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2784I4 extends AbstractC2790J4 implements InterfaceC2727s, Consumer {

    /* renamed from: e */
    Object f764e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2784I4(InterfaceC2727s interfaceC2727s, long j, long j2) {
        super(interfaceC2727s, j, j2);
    }

    C2784I4(InterfaceC2727s interfaceC2727s, C2784I4 c2784i4) {
        super(interfaceC2727s, c2784i4);
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f764e = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m498r() != 1 && this.f771a.mo113b(this)) {
            if (m500p(1L) == 1) {
                consumer.accept(this.f764e);
                this.f764e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2727s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2943k4 c2943k4 = null;
        while (true) {
            int m498r = m498r();
            if (m498r == 1) {
                return;
            }
            if (m498r == 2) {
                if (c2943k4 == null) {
                    c2943k4 = new C2943k4(128);
                } else {
                    c2943k4.f993a = 0;
                }
                long j = 0;
                while (this.f771a.mo113b(c2943k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m500p = m500p(j);
                for (int i = 0; i < m500p; i++) {
                    consumer.accept(c2943k4.f986b[i]);
                }
            } else {
                this.f771a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2727s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2654a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    @Override // p034j$.util.stream.AbstractC2790J4
    /* renamed from: q */
    protected InterfaceC2727s mo499q(InterfaceC2727s interfaceC2727s) {
        return new C2784I4(interfaceC2727s, this);
    }
}
