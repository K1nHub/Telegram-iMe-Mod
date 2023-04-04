package p035j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2764J4 {

    /* renamed from: a */
    protected final InterfaceC2701s f773a;

    /* renamed from: b */
    protected final boolean f774b;

    /* renamed from: c */
    private final long f775c;

    /* renamed from: d */
    private final AtomicLong f776d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2764J4(InterfaceC2701s interfaceC2701s, long j, long j2) {
        this.f773a = interfaceC2701s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f774b = i < 0;
        this.f775c = i >= 0 ? j2 : 0L;
        this.f776d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2764J4(InterfaceC2701s interfaceC2701s, AbstractC2764J4 abstractC2764J4) {
        this.f773a = interfaceC2701s;
        this.f774b = abstractC2764J4.f774b;
        this.f776d = abstractC2764J4.f776d;
        this.f775c = abstractC2764J4.f775c;
    }

    public final int characteristics() {
        return this.f773a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f773a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m509p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f776d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f774b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f776d.compareAndSet(j2, j2 - min));
        if (this.f774b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f775c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2701s mo508q(InterfaceC2701s interfaceC2701s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m507r() {
        if (this.f776d.get() > 0) {
            return 2;
        }
        return this.f774b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2702a trySplit() {
        return (InterfaceC2701s.InterfaceC2702a) m1569trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2703b m1567trySplit() {
        return (InterfaceC2701s.InterfaceC2703b) m1569trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2704c m1568trySplit() {
        return (InterfaceC2701s.InterfaceC2704c) m1569trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2701s m1569trySplit() {
        InterfaceC2701s trySplit;
        if (this.f776d.get() == 0 || (trySplit = this.f773a.trySplit()) == null) {
            return null;
        }
        return mo508q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3008t m1570trySplit() {
        return (InterfaceC3008t) m1569trySplit();
    }
}
