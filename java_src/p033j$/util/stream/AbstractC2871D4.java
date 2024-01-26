package p033j$.util.stream;

import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2871D4 {

    /* renamed from: a */
    final long f854a;

    /* renamed from: b */
    final long f855b;

    /* renamed from: c */
    Spliterator f856c;

    /* renamed from: d */
    long f857d;

    /* renamed from: e */
    long f858e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2871D4(Spliterator spliterator, long j, long j2, long j3, long j4) {
        this.f856c = spliterator;
        this.f854a = j;
        this.f855b = j2;
        this.f857d = j3;
        this.f858e = j4;
    }

    /* renamed from: a */
    protected abstract Spliterator mo348a(Spliterator spliterator, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f856c.characteristics();
    }

    public long estimateSize() {
        long j = this.f854a;
        long j2 = this.f858e;
        if (j < j2) {
            return j2 - Math.max(j, this.f857d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2771a trySplit() {
        return (Spliterator.InterfaceC2771a) m1937trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2772b m1934trySplit() {
        return (Spliterator.InterfaceC2772b) m1937trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2773c m1935trySplit() {
        return (Spliterator.InterfaceC2773c) m1937trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Spliterator.InterfaceC2774d m1936trySplit() {
        return (Spliterator.InterfaceC2774d) m1937trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public Spliterator m1937trySplit() {
        long j = this.f854a;
        long j2 = this.f858e;
        if (j >= j2 || this.f857d >= j2) {
            return null;
        }
        while (true) {
            Spliterator trySplit = this.f856c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f857d;
            long min = Math.min(estimateSize, this.f855b);
            long j3 = this.f854a;
            if (j3 >= min) {
                this.f857d = min;
            } else {
                long j4 = this.f855b;
                if (min < j4) {
                    long j5 = this.f857d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f857d = min;
                        return mo348a(trySplit, j3, j4, j5, min);
                    }
                    this.f857d = min;
                    return trySplit;
                }
                this.f856c = trySplit;
                this.f858e = min;
            }
        }
    }
}
