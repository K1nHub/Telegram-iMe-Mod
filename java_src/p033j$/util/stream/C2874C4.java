package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2874C4 extends AbstractC2880D4 implements InterfaceC2853s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2874C4(InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(interfaceC2853s, j, j2, 0L, Math.min(interfaceC2853s.estimateSize(), j2));
    }

    private C2874C4(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        super(interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.stream.AbstractC2880D4
    /* renamed from: a */
    protected InterfaceC2853s mo299a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        return new C2874C4(interfaceC2853s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f804a >= this.f808e) {
            return false;
        }
        while (true) {
            long j2 = this.f804a;
            j = this.f807d;
            if (j2 <= j) {
                break;
            }
            this.f806c.mo131b(new Consumer() { // from class: j$.util.stream.B4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f807d++;
        }
        if (j >= this.f808e) {
            return false;
        }
        this.f807d = j + 1;
        return this.f806c.mo131b(consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f804a;
        long j2 = this.f808e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f807d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f806c.estimateSize() + j3 <= this.f805b) {
            this.f806c.forEachRemaining(consumer);
            this.f807d = this.f808e;
            return;
        }
        while (this.f804a > this.f807d) {
            this.f806c.mo131b(new Consumer() { // from class: j$.util.stream.A4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f807d++;
        }
        while (this.f807d < this.f808e) {
            this.f806c.mo131b(consumer);
            this.f807d++;
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
}
