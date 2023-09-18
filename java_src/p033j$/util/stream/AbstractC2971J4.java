package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2971J4 {

    /* renamed from: a */
    protected final InterfaceC2908s f857a;

    /* renamed from: b */
    protected final boolean f858b;

    /* renamed from: c */
    private final long f859c;

    /* renamed from: d */
    private final AtomicLong f860d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2971J4(InterfaceC2908s interfaceC2908s, long j, long j2) {
        this.f857a = interfaceC2908s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f858b = i < 0;
        this.f859c = i >= 0 ? j2 : 0L;
        this.f860d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2971J4(InterfaceC2908s interfaceC2908s, AbstractC2971J4 abstractC2971J4) {
        this.f857a = interfaceC2908s;
        this.f858b = abstractC2971J4.f858b;
        this.f860d = abstractC2971J4.f860d;
        this.f859c = abstractC2971J4.f859c;
    }

    public final int characteristics() {
        return this.f857a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f857a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m518p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f860d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f858b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f860d.compareAndSet(j2, j2 - min));
        if (this.f858b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f859c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2908s mo517q(InterfaceC2908s interfaceC2908s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m516r() {
        if (this.f860d.get() > 0) {
            return 2;
        }
        return this.f858b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2909a trySplit() {
        return (InterfaceC2908s.InterfaceC2909a) m1656trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2910b m1654trySplit() {
        return (InterfaceC2908s.InterfaceC2910b) m1656trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2911c m1655trySplit() {
        return (InterfaceC2908s.InterfaceC2911c) m1656trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2908s m1656trySplit() {
        InterfaceC2908s trySplit;
        if (this.f860d.get() == 0 || (trySplit = this.f857a.trySplit()) == null) {
            return null;
        }
        return mo517q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3215t m1657trySplit() {
        return (InterfaceC3215t) m1656trySplit();
    }
}
