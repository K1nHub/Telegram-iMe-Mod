package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2652D4 {

    /* renamed from: a */
    final long f716a;

    /* renamed from: b */
    final long f717b;

    /* renamed from: c */
    InterfaceC2625s f718c;

    /* renamed from: d */
    long f719d;

    /* renamed from: e */
    long f720e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2652D4(InterfaceC2625s interfaceC2625s, long j, long j2, long j3, long j4) {
        this.f718c = interfaceC2625s;
        this.f716a = j;
        this.f717b = j2;
        this.f719d = j3;
        this.f720e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2625s mo295a(InterfaceC2625s interfaceC2625s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f718c.characteristics();
    }

    public long estimateSize() {
        long j = this.f716a;
        long j2 = this.f720e;
        if (j < j2) {
            return j2 - Math.max(j, this.f719d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2626a trySplit() {
        return (InterfaceC2625s.InterfaceC2626a) m1473trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2627b m1471trySplit() {
        return (InterfaceC2625s.InterfaceC2627b) m1473trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2628c m1472trySplit() {
        return (InterfaceC2625s.InterfaceC2628c) m1473trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2625s m1473trySplit() {
        long j = this.f716a;
        long j2 = this.f720e;
        if (j >= j2 || this.f719d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2625s trySplit = this.f718c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f719d;
            long min = Math.min(estimateSize, this.f717b);
            long j3 = this.f716a;
            if (j3 >= min) {
                this.f719d = min;
            } else {
                long j4 = this.f717b;
                if (min < j4) {
                    long j5 = this.f719d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f719d = min;
                        return mo295a(trySplit, j3, j4, j5, min);
                    }
                    this.f719d = min;
                    return trySplit;
                }
                this.f718c = trySplit;
                this.f720e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2932t m1474trySplit() {
        return (InterfaceC2932t) m1473trySplit();
    }
}
