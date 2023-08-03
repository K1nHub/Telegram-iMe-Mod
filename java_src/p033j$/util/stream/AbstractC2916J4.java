package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2916J4 {

    /* renamed from: a */
    protected final InterfaceC2853s f856a;

    /* renamed from: b */
    protected final boolean f857b;

    /* renamed from: c */
    private final long f858c;

    /* renamed from: d */
    private final AtomicLong f859d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2916J4(InterfaceC2853s interfaceC2853s, long j, long j2) {
        this.f856a = interfaceC2853s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f857b = i < 0;
        this.f858c = i >= 0 ? j2 : 0L;
        this.f859d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2916J4(InterfaceC2853s interfaceC2853s, AbstractC2916J4 abstractC2916J4) {
        this.f856a = interfaceC2853s;
        this.f857b = abstractC2916J4.f857b;
        this.f859d = abstractC2916J4.f859d;
        this.f858c = abstractC2916J4.f858c;
    }

    public final int characteristics() {
        return this.f856a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f856a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m518p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f859d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f857b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f859d.compareAndSet(j2, j2 - min));
        if (this.f857b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f858c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2853s mo517q(InterfaceC2853s interfaceC2853s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m516r() {
        if (this.f859d.get() > 0) {
            return 2;
        }
        return this.f857b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return (InterfaceC2853s.InterfaceC2854a) m1618trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2855b m1616trySplit() {
        return (InterfaceC2853s.InterfaceC2855b) m1618trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2856c m1617trySplit() {
        return (InterfaceC2853s.InterfaceC2856c) m1618trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2853s m1618trySplit() {
        InterfaceC2853s trySplit;
        if (this.f859d.get() == 0 || (trySplit = this.f856a.trySplit()) == null) {
            return null;
        }
        return mo517q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3160t m1619trySplit() {
        return (InterfaceC3160t) m1618trySplit();
    }
}
