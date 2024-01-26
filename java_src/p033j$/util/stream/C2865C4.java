package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.C4 */
/* loaded from: classes2.dex */
final class C2865C4 extends AbstractC2871D4 implements Spliterator {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2865C4(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2, 0L, Math.min(spliterator.estimateSize(), j2));
    }

    private C2865C4(Spliterator spliterator, long j, long j2, long j3, long j4) {
        super(spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.stream.AbstractC2871D4
    /* renamed from: a */
    protected Spliterator mo348a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new C2865C4(spliterator, j, j2, j3, j4);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo182b(Consumer consumer) {
        long j;
        Objects.requireNonNull(consumer);
        if (this.f854a >= this.f858e) {
            return false;
        }
        while (true) {
            long j2 = this.f854a;
            j = this.f857d;
            if (j2 <= j) {
                break;
            }
            this.f856c.mo182b(new Consumer() { // from class: j$.util.stream.B4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f857d++;
        }
        if (j >= this.f858e) {
            return false;
        }
        this.f857d = j + 1;
        return this.f856c.mo182b(consumer);
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        long j = this.f854a;
        long j2 = this.f858e;
        if (j >= j2) {
            return;
        }
        long j3 = this.f857d;
        if (j3 >= j2) {
            return;
        }
        if (j3 >= j && this.f856c.estimateSize() + j3 <= this.f855b) {
            this.f856c.forEachRemaining(consumer);
            this.f857d = this.f858e;
            return;
        }
        while (this.f854a > this.f857d) {
            this.f856c.mo182b(new Consumer() { // from class: j$.util.stream.A4
                @Override // p033j$.util.function.Consumer
                public final void accept(Object obj) {
                }

                @Override // p033j$.util.function.Consumer
                public /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer.CC.$default$andThen(this, consumer2);
                }
            });
            this.f857d++;
        }
        while (this.f857d < this.f858e) {
            this.f856c.mo182b(consumer);
            this.f857d++;
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }
}
