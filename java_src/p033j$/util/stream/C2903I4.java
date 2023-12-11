package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2903I4 extends AbstractC2909J4 implements Spliterator, Consumer {

    /* renamed from: e */
    Object f899e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2903I4(Spliterator spliterator, long j, long j2) {
        super(spliterator, j, j2);
    }

    C2903I4(Spliterator spliterator, C2903I4 c2903i4) {
        super(spliterator, c2903i4);
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
    public boolean mo179b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m562r() != 1 && this.f906a.mo179b(this)) {
            if (m564p(1L) == 1) {
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
        C3062k4 c3062k4 = null;
        while (true) {
            int m562r = m562r();
            if (m562r == 1) {
                return;
            }
            if (m562r == 2) {
                if (c3062k4 == null) {
                    c3062k4 = new C3062k4(128);
                } else {
                    c3062k4.f1128a = 0;
                }
                long j = 0;
                while (this.f906a.mo179b(c3062k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m564p = m564p(j);
                for (int i = 0; i < m564p; i++) {
                    consumer.accept(c3062k4.f1121b[i]);
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
        return AbstractC2840k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2840k.m601e(this, i);
    }

    @Override // p033j$.util.stream.AbstractC2909J4
    /* renamed from: q */
    protected Spliterator mo563q(Spliterator spliterator) {
        return new C2903I4(spliterator, this);
    }
}
