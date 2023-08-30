package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C3049I4 extends AbstractC3055J4 implements InterfaceC2992s, Consumer {

    /* renamed from: e */
    Object f859e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3049I4(InterfaceC2992s interfaceC2992s, long j, long j2) {
        super(interfaceC2992s, j, j2);
    }

    C3049I4(InterfaceC2992s interfaceC2992s, C3049I4 c3049i4) {
        super(interfaceC2992s, c3049i4);
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f859e = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m516r() != 1 && this.f866a.mo131b(this)) {
            if (m518p(1L) == 1) {
                consumer.accept(this.f859e);
                this.f859e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C3208k4 c3208k4 = null;
        while (true) {
            int m516r = m516r();
            if (m516r == 1) {
                return;
            }
            if (m516r == 2) {
                if (c3208k4 == null) {
                    c3208k4 = new C3208k4(128);
                } else {
                    c3208k4.f1088a = 0;
                }
                long j = 0;
                while (this.f866a.mo131b(c3208k4)) {
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
                    consumer.accept(c3208k4.f1081b[i]);
                }
            } else {
                this.f866a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    @Override // p033j$.util.stream.AbstractC3055J4
    /* renamed from: q */
    protected InterfaceC2992s mo517q(InterfaceC2992s interfaceC2992s) {
        return new C3049I4(interfaceC2992s, this);
    }
}
