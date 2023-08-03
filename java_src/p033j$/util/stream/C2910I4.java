package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2910I4 extends AbstractC2916J4 implements InterfaceC2853s, Consumer {

    /* renamed from: e */
    Object f849e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2910I4(InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(interfaceC2853s, j, j2);
    }

    C2910I4(InterfaceC2853s interfaceC2853s, C2910I4 c2910i4) {
        super(interfaceC2853s, c2910i4);
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f849e = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m516r() != 1 && this.f856a.mo131b(this)) {
            if (m518p(1L) == 1) {
                consumer.accept(this.f849e);
                this.f849e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C3069k4 c3069k4 = null;
        while (true) {
            int m516r = m516r();
            if (m516r == 1) {
                return;
            }
            if (m516r == 2) {
                if (c3069k4 == null) {
                    c3069k4 = new C3069k4(128);
                } else {
                    c3069k4.f1078a = 0;
                }
                long j = 0;
                while (this.f856a.mo131b(c3069k4)) {
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
                    consumer.accept(c3069k4.f1071b[i]);
                }
            } else {
                this.f856a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.stream.AbstractC2916J4
    /* renamed from: q */
    protected InterfaceC2853s mo517q(InterfaceC2853s interfaceC2853s) {
        return new C2910I4(interfaceC2853s, this);
    }
}
