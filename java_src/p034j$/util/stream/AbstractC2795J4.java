package p034j$.util.stream;

import java.util.concurrent.atomic.AtomicLong;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
/* renamed from: j$.util.stream.J4 */
/* loaded from: classes2.dex */
abstract class AbstractC2795J4 {

    /* renamed from: a */
    protected final InterfaceC2732s f771a;

    /* renamed from: b */
    protected final boolean f772b;

    /* renamed from: c */
    private final long f773c;

    /* renamed from: d */
    private final AtomicLong f774d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2795J4(InterfaceC2732s interfaceC2732s, long j, long j2) {
        this.f771a = interfaceC2732s;
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        this.f772b = i < 0;
        this.f773c = i >= 0 ? j2 : 0L;
        this.f774d = new AtomicLong(i >= 0 ? j + j2 : j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2795J4(InterfaceC2732s interfaceC2732s, AbstractC2795J4 abstractC2795J4) {
        this.f771a = interfaceC2732s;
        this.f772b = abstractC2795J4.f772b;
        this.f774d = abstractC2795J4.f774d;
        this.f773c = abstractC2795J4.f773c;
    }

    public final int characteristics() {
        return this.f771a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.f771a.estimateSize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final long m500p(long j) {
        long j2;
        long min;
        do {
            j2 = this.f774d.get();
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else if (this.f772b) {
                return j;
            } else {
                return 0L;
            }
        } while (!this.f774d.compareAndSet(j2, j2 - min));
        if (this.f772b) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.f773c;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    /* renamed from: q */
    protected abstract InterfaceC2732s mo499q(InterfaceC2732s interfaceC2732s);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: r */
    public final int m498r() {
        if (this.f774d.get() > 0) {
            return 2;
        }
        return this.f772b ? 3 : 1;
    }

    public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2733a trySplit() {
        return (InterfaceC2732s.InterfaceC2733a) m1574trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2734b m1572trySplit() {
        return (InterfaceC2732s.InterfaceC2734b) m1574trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2735c m1573trySplit() {
        return (InterfaceC2732s.InterfaceC2735c) m1574trySplit();
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public final InterfaceC2732s m1574trySplit() {
        InterfaceC2732s trySplit;
        if (this.f774d.get() == 0 || (trySplit = this.f771a.trySplit()) == null) {
            return null;
        }
        return mo499q(trySplit);
    }

    /* renamed from: trySplit  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ InterfaceC3039t m1575trySplit() {
        return (InterfaceC3039t) m1574trySplit();
    }
}
