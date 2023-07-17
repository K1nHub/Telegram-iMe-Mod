package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.util.stream.D4 */
/* loaded from: classes2.dex */
abstract class AbstractC2880D4 {

    /* renamed from: a */
    final long f801a;

    /* renamed from: b */
    final long f802b;

    /* renamed from: c */
    InterfaceC2853s f803c;

    /* renamed from: d */
    long f804d;

    /* renamed from: e */
    long f805e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2880D4(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4) {
        this.f803c = interfaceC2853s;
        this.f801a = j;
        this.f802b = j2;
        this.f804d = j3;
        this.f805e = j4;
    }

    /* renamed from: a */
    protected abstract InterfaceC2853s mo281a(InterfaceC2853s interfaceC2853s, long j, long j2, long j3, long j4);

    public int characteristics() {
        return this.f803c.characteristics();
    }

    public long estimateSize() {
        long j = this.f801a;
        long j2 = this.f805e;
        if (j < j2) {
            return j2 - Math.max(j, this.f804d);
        }
        return 0L;
    }

    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return (InterfaceC2853s.InterfaceC2854a) m1595trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2855b m1593trySplit() {
        return (InterfaceC2853s.InterfaceC2855b) m1595trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2856c m1594trySplit() {
        return (InterfaceC2853s.InterfaceC2856c) m1595trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public InterfaceC2853s m1595trySplit() {
        long j = this.f801a;
        long j2 = this.f805e;
        if (j >= j2 || this.f804d >= j2) {
            return null;
        }
        while (true) {
            InterfaceC2853s trySplit = this.f803c.trySplit();
            if (trySplit == null) {
                return null;
            }
            long estimateSize = trySplit.estimateSize() + this.f804d;
            long min = Math.min(estimateSize, this.f802b);
            long j3 = this.f801a;
            if (j3 >= min) {
                this.f804d = min;
            } else {
                long j4 = this.f802b;
                if (min < j4) {
                    long j5 = this.f804d;
                    if (j5 < j3 || estimateSize > j4) {
                        this.f804d = min;
                        return mo281a(trySplit, j3, j4, j5, min);
                    }
                    this.f804d = min;
                    return trySplit;
                }
                this.f803c = trySplit;
                this.f805e = min;
            }
        }
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3160t m1596trySplit() {
        return (InterfaceC3160t) m1595trySplit();
    }
}
