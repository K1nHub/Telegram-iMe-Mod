package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2638D4 {

    /* renamed from: a */
    final long f715a;

    /* renamed from: b */
    final long f716b;

    /* renamed from: c */
    InterfaceC2611s f717c;

    /* renamed from: d */
    long f718d;

    /* renamed from: e */
    long f719e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2638D4(InterfaceC2611s interfaceC2611s, long j, long j2, long j3, long j4) {
        this.f717c = interfaceC2611s;
        this.f715a = j;
        this.f716b = j2;
        this.f718d = j3;
        this.f719e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2611s mo296a(InterfaceC2611s interfaceC2611s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f717c.characteristics();
    }

    public long estimateSize() {
        long j = this.f715a;
        long j2 = this.f719e;
        if (j < j2) {
            return j2 - Math.max(j, this.f718d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2612a trySplit() {
        return (InterfaceC2611s.InterfaceC2612a) m1457trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2613b m1455trySplit() {
        return (InterfaceC2611s.InterfaceC2613b) m1457trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2614c m1456trySplit() {
        return (InterfaceC2611s.InterfaceC2614c) m1457trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2611s m1457trySplit() {
        long j = this.f715a;
        long j2 = this.f719e;
        if (j >= j2 || this.f718d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2611s trySplit = this.f717c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f718d;
            long min = Math.min(estimateSize, this.f716b);
            long j3 = this.f715a;
            if (j3 >= min) {
                this.f718d = min;
            } else {
                long j4 = this.f716b;
                if (min < j4) {
                    long j5 = this.f718d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f718d = min;
                        return mo296a(trySplit, j3, j4, j5, min);
                    }
                    this.f718d = min;
                    return trySplit;
                }
                this.f717c = trySplit;
                this.f719e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2918t m1458trySplit() {
        return (InterfaceC2918t) m1457trySplit();
    }
}
