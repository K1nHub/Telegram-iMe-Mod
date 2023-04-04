package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2728D4 {

    /* renamed from: a */
    final long f721a;

    /* renamed from: b */
    final long f722b;

    /* renamed from: c */
    InterfaceC2701s f723c;

    /* renamed from: d */
    long f724d;

    /* renamed from: e */
    long f725e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2728D4(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4) {
        this.f723c = interfaceC2701s;
        this.f721a = j;
        this.f722b = j2;
        this.f724d = j3;
        this.f725e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2701s mo290a(InterfaceC2701s interfaceC2701s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f723c.characteristics();
    }

    public long estimateSize() {
        long j = this.f721a;
        long j2 = this.f725e;
        if (j < j2) {
            return j2 - Math.max(j, this.f724d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2702a trySplit() {
        return (InterfaceC2701s.InterfaceC2702a) m1565trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2703b m1563trySplit() {
        return (InterfaceC2701s.InterfaceC2703b) m1565trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2704c m1564trySplit() {
        return (InterfaceC2701s.InterfaceC2704c) m1565trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2701s m1565trySplit() {
        long j = this.f721a;
        long j2 = this.f725e;
        if (j >= j2 || this.f724d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2701s trySplit = this.f723c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f724d;
            long min = Math.min(estimateSize, this.f722b);
            long j3 = this.f721a;
            if (j3 >= min) {
                this.f724d = min;
            } else {
                long j4 = this.f722b;
                if (min < j4) {
                    long j5 = this.f724d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f724d = min;
                        return mo290a(trySplit, j3, j4, j5, min);
                    }
                    this.f724d = min;
                    return trySplit;
                }
                this.f723c = trySplit;
                this.f725e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3008t m1566trySplit() {
        return (InterfaceC3008t) m1565trySplit();
    }
}
