package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC3019D4 {

    /* renamed from: a */
    final long f814a;

    /* renamed from: b */
    final long f815b;

    /* renamed from: c */
    InterfaceC2992s f816c;

    /* renamed from: d */
    long f817d;

    /* renamed from: e */
    long f818e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3019D4(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4) {
        this.f816c = interfaceC2992s;
        this.f814a = j;
        this.f815b = j2;
        this.f817d = j3;
        this.f818e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2992s mo299a(InterfaceC2992s interfaceC2992s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f816c.characteristics();
    }

    public long estimateSize() {
        long j = this.f814a;
        long j2 = this.f818e;
        if (j < j2) {
            return j2 - Math.max(j, this.f817d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2993a trySplit() {
        return (InterfaceC2992s.InterfaceC2993a) m1654trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2994b m1652trySplit() {
        return (InterfaceC2992s.InterfaceC2994b) m1654trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2995c m1653trySplit() {
        return (InterfaceC2992s.InterfaceC2995c) m1654trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2992s m1654trySplit() {
        long j = this.f814a;
        long j2 = this.f818e;
        if (j >= j2 || this.f817d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2992s trySplit = this.f816c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f817d;
            long min = Math.min(estimateSize, this.f815b);
            long j3 = this.f814a;
            if (j3 >= min) {
                this.f817d = min;
            } else {
                long j4 = this.f815b;
                if (min < j4) {
                    long j5 = this.f817d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f817d = min;
                        return mo299a(trySplit, j3, j4, j5, min);
                    }
                    this.f817d = min;
                    return trySplit;
                }
                this.f816c = trySplit;
                this.f818e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3299t m1655trySplit() {
        return (InterfaceC3299t) m1654trySplit();
    }
}
