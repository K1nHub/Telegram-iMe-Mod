package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2901I4 extends AbstractC2907J4 implements Spliterator, Consumer {

    /* renamed from: e */
    Object f899e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2901I4(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2);
    }

    C2901I4(Spliterator spliterator, C2901I4 c2901i4) {
        super(spliterator, c2901i4);
    }

    @Override // p033j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f899e = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo182b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m565r() != 1 && this.f906a.mo182b(this)) {
            if (m567p(1L) == 1) {
                consumer.accept(this.f899e);
                this.f899e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C3060k4 c3060k4 = null;
        while (true) {
            int m565r = m565r();
            if (m565r == 1) {
                return;
            }
            if (m565r == 2) {
                if (c3060k4 == null) {
                    c3060k4 = new C3060k4(128);
                } else {
                    c3060k4.f1128a = 0;
                }
                long j = 0;
                while (this.f906a.mo182b(c3060k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m567p = m567p(j);
                for (int i = 0; i < m567p; i++) {
                    consumer.accept(c3060k4.f1121b[i]);
                }
            } else {
                this.f906a.forEachRemaining(consumer);
                return;
            }
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

    @Override // p033j$.util.stream.AbstractC2907J4
    /* renamed from: q */
    protected Spliterator mo566q(Spliterator spliterator) {
        return new C2901I4(spliterator, this);
    }
}
