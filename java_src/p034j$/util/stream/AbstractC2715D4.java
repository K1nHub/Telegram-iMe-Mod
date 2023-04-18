package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2715D4 {

    /* renamed from: a */
    final long f716a;

    /* renamed from: b */
    final long f717b;

    /* renamed from: c */
    InterfaceC2688s f718c;

    /* renamed from: d */
    long f719d;

    /* renamed from: e */
    long f720e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2715D4(InterfaceC2688s interfaceC2688s, long j, long j2, long j3, long j4) {
        this.f718c = interfaceC2688s;
        this.f716a = j;
        this.f717b = j2;
        this.f719d = j3;
        this.f720e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2688s mo276a(InterfaceC2688s interfaceC2688s, long j, long j2, long j3, long j4);

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

    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2689a trySplit() {
        return (InterfaceC2688s.InterfaceC2689a) m1549trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2690b m1547trySplit() {
        return (InterfaceC2688s.InterfaceC2690b) m1549trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2688s.InterfaceC2691c m1548trySplit() {
        return (InterfaceC2688s.InterfaceC2691c) m1549trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2688s m1549trySplit() {
        long j = this.f716a;
        long j2 = this.f720e;
        if (j >= j2 || this.f719d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2688s trySplit = this.f718c.trySplit();
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
                        return mo276a(trySplit, j3, j4, j5, min);
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
    public /* bridge */ /* synthetic */ InterfaceC2995t m1550trySplit() {
        return (InterfaceC2995t) m1549trySplit();
    }
}
