package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2880D4 {

    /* renamed from: a */
    final long f804a;

    /* renamed from: b */
    final long f805b;

    /* renamed from: c */
    InterfaceC2853s f806c;

    /* renamed from: d */
    long f807d;

    /* renamed from: e */
    long f808e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2880D4(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        this.f806c = interfaceC2853s;
        this.f804a = j;
        this.f805b = j2;
        this.f807d = j3;
        this.f808e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2853s mo299a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f806c.characteristics();
    }

    public long estimateSize() {
        long j = this.f804a;
        long j2 = this.f808e;
        if (j < j2) {
            return j2 - Math.max(j, this.f807d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return (InterfaceC2853s.InterfaceC2854a) m1614trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2855b m1612trySplit() {
        return (InterfaceC2853s.InterfaceC2855b) m1614trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2856c m1613trySplit() {
        return (InterfaceC2853s.InterfaceC2856c) m1614trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2853s m1614trySplit() {
        long j = this.f804a;
        long j2 = this.f808e;
        if (j >= j2 || this.f807d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2853s trySplit = this.f806c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f807d;
            long min = Math.min(estimateSize, this.f805b);
            long j3 = this.f804a;
            if (j3 >= min) {
                this.f807d = min;
            } else {
                long j4 = this.f805b;
                if (min < j4) {
                    long j5 = this.f807d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f807d = min;
                        return mo299a(trySplit, j3, j4, j5, min);
                    }
                    this.f807d = min;
                    return trySplit;
                }
                this.f806c = trySplit;
                this.f808e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3160t m1615trySplit() {
        return (InterfaceC3160t) m1614trySplit();
    }
}
