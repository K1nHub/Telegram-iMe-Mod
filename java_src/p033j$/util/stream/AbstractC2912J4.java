package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2912J4 {

    /* renamed from: a */
    protected final Spliterator f906a;

    /* renamed from: b */
    protected final boolean f907b;

    /* renamed from: c */
    private final long f908c;

    /* renamed from: d */
    private final AtomicLong f909d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2912J4(Spliterator spliterator, long j, long j2) {
        this.f906a = spliterator;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f907b = i < 0;
        this.f908c = i >= 0 ? j2 : 0L;
        this.f909d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2912J4(Spliterator spliterator, AbstractC2912J4 abstractC2912J4) {
        this.f906a = spliterator;
        this.f907b = abstractC2912J4.f907b;
        this.f909d = abstractC2912J4.f909d;
        this.f908c = abstractC2912J4.f908c;
    }

    public final int characteristics() {
        return this.f906a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f906a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m564p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f909d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f907b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f909d.compareAndSet(j2, j2 - min));
        if (this.f907b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f908c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract Spliterator mo563q(Spliterator spliterator);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m562r() {
        if (this.f909d.get() > 0) {
            return 2;
        }
        return this.f907b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2776a trySplit() {
        return (Spliterator.InterfaceC2776a) m1938trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2777b m1935trySplit() {
        return (Spliterator.InterfaceC2777b) m1938trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2778c m1936trySplit() {
        return (Spliterator.InterfaceC2778c) m1938trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2779d m1937trySplit() {
        return (Spliterator.InterfaceC2779d) m1938trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final Spliterator m1938trySplit() {
        Spliterator trySplit;
        if (this.f909d.get() == 0 || (trySplit = this.f906a.trySplit()) == null) {
            return null;
        }
        return mo563q(trySplit);
    }
}
