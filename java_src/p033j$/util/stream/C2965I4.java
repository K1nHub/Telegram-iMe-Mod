package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2965I4 extends AbstractC2971J4 implements InterfaceC2908s, Consumer {

    /* renamed from: e */
    Object f850e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2965I4(InterfaceC2908s interfaceC2908s, long j, long j2) {
        super(interfaceC2908s, j, j2);
    }

    C2965I4(InterfaceC2908s interfaceC2908s, C2965I4 c2965i4) {
        super(interfaceC2908s, c2965i4);
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f850e = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m516r() != 1 && this.f857a.mo131b(this)) {
            if (m518p(1L) == 1) {
                consumer.accept(this.f850e);
                this.f850e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C3124k4 c3124k4 = null;
        while (true) {
            int m516r = m516r();
            if (m516r == 1) {
                return;
            }
            if (m516r == 2) {
                if (c3124k4 == null) {
                    c3124k4 = new C3124k4(128);
                } else {
                    c3124k4.f1079a = 0;
                }
                long j = 0;
                while (this.f857a.mo131b(c3124k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m518p = m518p(j);
                for (int i = 0; i < m518p; i++) {
                    consumer.accept(c3124k4.f1072b[i]);
                }
            } else {
                this.f857a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.stream.AbstractC2971J4
    /* renamed from: q */
    protected InterfaceC2908s mo517q(InterfaceC2908s interfaceC2908s) {
        return new C2965I4(interfaceC2908s, this);
    }
}
