package p034j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2688J4 {

    /* renamed from: a */
    protected final InterfaceC2625s f768a;

    /* renamed from: b */
    protected final boolean f769b;

    /* renamed from: c */
    private final long f770c;

    /* renamed from: d */
    private final AtomicLong f771d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2688J4(InterfaceC2625s interfaceC2625s, long j, long j2) {
        this.f768a = interfaceC2625s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f769b = i < 0;
        this.f770c = i >= 0 ? j2 : 0L;
        this.f771d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2688J4(InterfaceC2625s interfaceC2625s, AbstractC2688J4 abstractC2688J4) {
        this.f768a = interfaceC2625s;
        this.f769b = abstractC2688J4.f769b;
        this.f771d = abstractC2688J4.f771d;
        this.f770c = abstractC2688J4.f770c;
    }

    public final int characteristics() {
        return this.f768a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f768a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m514p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f771d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f769b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f771d.compareAndSet(j2, j2 - min));
        if (this.f769b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f770c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2625s mo513q(InterfaceC2625s interfaceC2625s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m512r() {
        if (this.f771d.get() > 0) {
            return 2;
        }
        return this.f769b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2626a trySplit() {
        return (InterfaceC2625s.InterfaceC2626a) m1477trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2627b m1475trySplit() {
        return (InterfaceC2625s.InterfaceC2627b) m1477trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2625s.InterfaceC2628c m1476trySplit() {
        return (InterfaceC2625s.InterfaceC2628c) m1477trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2625s m1477trySplit() {
        InterfaceC2625s trySplit;
        if (this.f771d.get() == 0 || (trySplit = this.f768a.trySplit()) == null) {
            return null;
        }
        return mo513q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2932t m1478trySplit() {
        return (InterfaceC2932t) m1477trySplit();
    }
}
