package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C3013C4 extends AbstractC3019D4 implements InterfaceC2992s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3013C4(InterfaceC2992s interfaceC2992s, long j, long j2) {
        super(interfaceC2992s, j, j2, 0L, Math.min(interfaceC2992s.estimateSize(), j2));
    }

    private C3013C4(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4) {
        super(interfaceC2992s, j, j2, j3, j4);
    }

    @Override // p033j$.util.stream.AbstractC3019D4
    /* renamed from: a */
    protected InterfaceC2992s mo299a(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4) {
        return new C3013C4(interfaceC2992s, j, j2, j3, j4);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f814a >= this.f818e) {
            return false;
        }
        while (true) {
            long j2 = this.f814a;
            j = this.f817d;
            if (j2 <= j) {
                break;
            }
            this.f816c.mo131b(new Consumer() { // from class: j$.util.stream.B4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f817d++;
        }
        if (j >= this.f818e) {
            return false;
        }
        this.f817d = j + 1;
        return this.f816c.mo131b(consumer);
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f814a;
        long j2 = this.f818e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f817d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f816c.estimateSize() + j3 <= this.f815b) {
            this.f816c.forEachRemaining(consumer);
            this.f817d = this.f818e;
            return;
        }
        while (this.f814a > this.f817d) {
            this.f816c.mo131b(new Consumer() { // from class: j$.util.stream.A4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f817d++;
        }
        while (this.f817d < this.f818e) {
            this.f816c.mo131b(consumer);
            this.f817d++;
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
}
