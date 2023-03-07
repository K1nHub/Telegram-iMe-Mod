package p034j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2550J4 {

    /* renamed from: a */
    protected final InterfaceC2487s f762a;

    /* renamed from: b */
    protected final boolean f763b;

    /* renamed from: c */
    private final long f764c;

    /* renamed from: d */
    private final AtomicLong f765d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2550J4(InterfaceC2487s interfaceC2487s, long j, long j2) {
        this.f762a = interfaceC2487s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f763b = i < 0;
        this.f764c = i >= 0 ? j2 : 0L;
        this.f765d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2550J4(InterfaceC2487s interfaceC2487s, AbstractC2550J4 abstractC2550J4) {
        this.f762a = interfaceC2487s;
        this.f763b = abstractC2550J4.f763b;
        this.f765d = abstractC2550J4.f765d;
        this.f764c = abstractC2550J4.f764c;
    }

    public final int characteristics() {
        return this.f762a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f762a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m515p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f765d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f763b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f765d.compareAndSet(j2, j2 - min));
        if (this.f763b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f764c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2487s mo514q(InterfaceC2487s interfaceC2487s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m513r() {
        if (this.f765d.get() > 0) {
            return 2;
        }
        return this.f763b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2488a trySplit() {
        return (InterfaceC2487s.InterfaceC2488a) m1868trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2489b m1866trySplit() {
        return (InterfaceC2487s.InterfaceC2489b) m1868trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2487s.InterfaceC2490c m1867trySplit() {
        return (InterfaceC2487s.InterfaceC2490c) m1868trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2487s m1868trySplit() {
        InterfaceC2487s trySplit;
        if (this.f765d.get() == 0 || (trySplit = this.f762a.trySplit()) == null) {
            return null;
        }
        return mo514q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2794t m1869trySplit() {
        return (InterfaceC2794t) m1868trySplit();
    }
}
