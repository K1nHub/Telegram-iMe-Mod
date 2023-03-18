package p034j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2674J4 {

    /* renamed from: a */
    protected final InterfaceC2611s f767a;

    /* renamed from: b */
    protected final boolean f768b;

    /* renamed from: c */
    private final long f769c;

    /* renamed from: d */
    private final AtomicLong f770d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2674J4(InterfaceC2611s interfaceC2611s, long j, long j2) {
        this.f767a = interfaceC2611s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f768b = i < 0;
        this.f769c = i >= 0 ? j2 : 0L;
        this.f770d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2674J4(InterfaceC2611s interfaceC2611s, AbstractC2674J4 abstractC2674J4) {
        this.f767a = interfaceC2611s;
        this.f768b = abstractC2674J4.f768b;
        this.f770d = abstractC2674J4.f770d;
        this.f769c = abstractC2674J4.f769c;
    }

    public final int characteristics() {
        return this.f767a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f767a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m515p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f770d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f768b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f770d.compareAndSet(j2, j2 - min));
        if (this.f768b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f769c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2611s mo514q(InterfaceC2611s interfaceC2611s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m513r() {
        if (this.f770d.get() > 0) {
            return 2;
        }
        return this.f768b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2612a trySplit() {
        return (InterfaceC2611s.InterfaceC2612a) m1461trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2613b m1459trySplit() {
        return (InterfaceC2611s.InterfaceC2613b) m1461trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2611s.InterfaceC2614c m1460trySplit() {
        return (InterfaceC2611s.InterfaceC2614c) m1461trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2611s m1461trySplit() {
        InterfaceC2611s trySplit;
        if (this.f770d.get() == 0 || (trySplit = this.f767a.trySplit()) == null) {
            return null;
        }
        return mo514q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2918t m1462trySplit() {
        return (InterfaceC2918t) m1461trySplit();
    }
}
