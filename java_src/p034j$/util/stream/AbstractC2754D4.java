package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2754D4 {

    /* renamed from: a */
    final long f719a;

    /* renamed from: b */
    final long f720b;

    /* renamed from: c */
    InterfaceC2727s f721c;

    /* renamed from: d */
    long f722d;

    /* renamed from: e */
    long f723e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2754D4(InterfaceC2727s interfaceC2727s, long j, long j2, long j3, long j4) {
        this.f721c = interfaceC2727s;
        this.f719a = j;
        this.f720b = j2;
        this.f722d = j3;
        this.f723e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2727s mo281a(InterfaceC2727s interfaceC2727s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f721c.characteristics();
    }

    public long estimateSize() {
        long j = this.f719a;
        long j2 = this.f723e;
        if (j < j2) {
            return j2 - Math.max(j, this.f722d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2728a trySplit() {
        return (InterfaceC2727s.InterfaceC2728a) m1568trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2729b m1566trySplit() {
        return (InterfaceC2727s.InterfaceC2729b) m1568trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2730c m1567trySplit() {
        return (InterfaceC2727s.InterfaceC2730c) m1568trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2727s m1568trySplit() {
        long j = this.f719a;
        long j2 = this.f723e;
        if (j >= j2 || this.f722d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2727s trySplit = this.f721c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f722d;
            long min = Math.min(estimateSize, this.f720b);
            long j3 = this.f719a;
            if (j3 >= min) {
                this.f722d = min;
            } else {
                long j4 = this.f720b;
                if (min < j4) {
                    long j5 = this.f722d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f722d = min;
                        return mo281a(trySplit, j3, j4, j5, min);
                    }
                    this.f722d = min;
                    return trySplit;
                }
                this.f721c = trySplit;
                this.f723e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3034t m1569trySplit() {
        return (InterfaceC3034t) m1568trySplit();
    }
}
