package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2514D4 {

    /* renamed from: a */
    final long f710a;

    /* renamed from: b */
    final long f711b;

    /* renamed from: c */
    InterfaceC2487s f712c;

    /* renamed from: d */
    long f713d;

    /* renamed from: e */
    long f714e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2514D4(InterfaceC2487s interfaceC2487s, long j, long j2, long j3, long j4) {
        this.f712c = interfaceC2487s;
        this.f710a = j;
        this.f711b = j2;
        this.f713d = j3;
        this.f714e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2487s mo296a(InterfaceC2487s interfaceC2487s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f712c.characteristics();
    }

    public long estimateSize() {
        long j = this.f710a;
        long j2 = this.f714e;
        if (j < j2) {
            return j2 - Math.max(j, this.f713d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2488a trySplit() {
        return (InterfaceC2487s.InterfaceC2488a) m1864trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2489b m1862trySplit() {
        return (InterfaceC2487s.InterfaceC2489b) m1864trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2490c m1863trySplit() {
        return (InterfaceC2487s.InterfaceC2490c) m1864trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2487s m1864trySplit() {
        long j = this.f710a;
        long j2 = this.f714e;
        if (j >= j2 || this.f713d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2487s trySplit = this.f712c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f713d;
            long min = Math.min(estimateSize, this.f711b);
            long j3 = this.f710a;
            if (j3 >= min) {
                this.f713d = min;
            } else {
                long j4 = this.f711b;
                if (min < j4) {
                    long j5 = this.f713d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f713d = min;
                        return mo296a(trySplit, j3, j4, j5, min);
                    }
                    this.f713d = min;
                    return trySplit;
                }
                this.f712c = trySplit;
                this.f714e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2794t m1865trySplit() {
        return (InterfaceC2794t) m1864trySplit();
    }
}
