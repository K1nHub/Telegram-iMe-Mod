package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2935D4 {

    /* renamed from: a */
    final long f805a;

    /* renamed from: b */
    final long f806b;

    /* renamed from: c */
    InterfaceC2908s f807c;

    /* renamed from: d */
    long f808d;

    /* renamed from: e */
    long f809e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2935D4(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4) {
        this.f807c = interfaceC2908s;
        this.f805a = j;
        this.f806b = j2;
        this.f808d = j3;
        this.f809e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2908s mo299a(InterfaceC2908s interfaceC2908s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f807c.characteristics();
    }

    public long estimateSize() {
        long j = this.f805a;
        long j2 = this.f809e;
        if (j < j2) {
            return j2 - Math.max(j, this.f808d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2909a trySplit() {
        return (InterfaceC2908s.InterfaceC2909a) m1652trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2910b m1650trySplit() {
        return (InterfaceC2908s.InterfaceC2910b) m1652trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2911c m1651trySplit() {
        return (InterfaceC2908s.InterfaceC2911c) m1652trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2908s m1652trySplit() {
        long j = this.f805a;
        long j2 = this.f809e;
        if (j >= j2 || this.f808d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2908s trySplit = this.f807c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f808d;
            long min = Math.min(estimateSize, this.f806b);
            long j3 = this.f805a;
            if (j3 >= min) {
                this.f808d = min;
            } else {
                long j4 = this.f806b;
                if (min < j4) {
                    long j5 = this.f808d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f808d = min;
                        return mo299a(trySplit, j3, j4, j5, min);
                    }
                    this.f808d = min;
                    return trySplit;
                }
                this.f807c = trySplit;
                this.f809e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3215t m1653trySplit() {
        return (InterfaceC3215t) m1652trySplit();
    }
}
