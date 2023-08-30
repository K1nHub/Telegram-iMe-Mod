package p033j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC3055J4 {

    /* renamed from: a */
    protected final InterfaceC2992s f866a;

    /* renamed from: b */
    protected final boolean f867b;

    /* renamed from: c */
    private final long f868c;

    /* renamed from: d */
    private final AtomicLong f869d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3055J4(InterfaceC2992s interfaceC2992s, long j, long j2) {
        this.f866a = interfaceC2992s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f867b = i < 0;
        this.f868c = i >= 0 ? j2 : 0L;
        this.f869d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3055J4(InterfaceC2992s interfaceC2992s, AbstractC3055J4 abstractC3055J4) {
        this.f866a = interfaceC2992s;
        this.f867b = abstractC3055J4.f867b;
        this.f869d = abstractC3055J4.f869d;
        this.f868c = abstractC3055J4.f868c;
    }

    public final int characteristics() {
        return this.f866a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f866a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m518p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f869d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f867b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f869d.compareAndSet(j2, j2 - min));
        if (this.f867b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f868c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2992s mo517q(InterfaceC2992s interfaceC2992s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m516r() {
        if (this.f869d.get() > 0) {
            return 2;
        }
        return this.f867b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2993a trySplit() {
        return (InterfaceC2992s.InterfaceC2993a) m1658trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2994b m1656trySplit() {
        return (InterfaceC2992s.InterfaceC2994b) m1658trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2992s.InterfaceC2995c m1657trySplit() {
        return (InterfaceC2992s.InterfaceC2995c) m1658trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2992s m1658trySplit() {
        InterfaceC2992s trySplit;
        if (this.f869d.get() == 0 || (trySplit = this.f866a.trySplit()) == null) {
            return null;
        }
        return mo517q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3299t m1659trySplit() {
        return (InterfaceC3299t) m1658trySplit();
    }
}
