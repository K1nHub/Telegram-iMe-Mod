package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2813c;
import p033j$.util.function.InterfaceC2834x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3031f4 implements Spliterator {

    /* renamed from: a */
    final boolean f1081a;

    /* renamed from: b */
    final AbstractC3143y2 f1082b;

    /* renamed from: c */
    private InterfaceC2834x f1083c;

    /* renamed from: d */
    Spliterator f1084d;

    /* renamed from: e */
    InterfaceC3072m3 f1085e;

    /* renamed from: f */
    InterfaceC2813c f1086f;

    /* renamed from: g */
    long f1087g;

    /* renamed from: h */
    AbstractC3020e f1088h;

    /* renamed from: i */
    boolean f1089i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3031f4(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        this.f1082b = abstractC3143y2;
        this.f1083c = null;
        this.f1084d = spliterator;
        this.f1081a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3031f4(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        this.f1082b = abstractC3143y2;
        this.f1083c = interfaceC2834x;
        this.f1084d = null;
        this.f1081a = z;
    }

    /* renamed from: f */
    private boolean m462f() {
        boolean mo178b;
        while (this.f1088h.count() == 0) {
            if (!this.f1085e.mo359o()) {
                C3002b c3002b = (C3002b) this.f1086f;
                switch (c3002b.f1017a) {
                    case 4:
                        C3085o4 c3085o4 = (C3085o4) c3002b.f1018b;
                        mo178b = c3085o4.f1084d.mo178b(c3085o4.f1085e);
                        break;
                    case 5:
                        C3097q4 c3097q4 = (C3097q4) c3002b.f1018b;
                        mo178b = c3097q4.f1084d.mo178b(c3097q4.f1085e);
                        break;
                    case 6:
                        C3109s4 c3109s4 = (C3109s4) c3002b.f1018b;
                        mo178b = c3109s4.f1084d.mo178b(c3109s4.f1085e);
                        break;
                    default:
                        C2920L4 c2920l4 = (C2920L4) c3002b.f1018b;
                        mo178b = c2920l4.f1084d.mo178b(c2920l4.f1085e);
                        break;
                }
                if (mo178b) {
                    continue;
                }
            }
            if (this.f1089i) {
                return false;
            }
            this.f1085e.mo384l();
            this.f1089i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m463a() {
        AbstractC3020e abstractC3020e = this.f1088h;
        if (abstractC3020e == null) {
            if (this.f1089i) {
                return false;
            }
            m461h();
            mo388j();
            this.f1087g = 0L;
            this.f1085e.mo360m(this.f1084d.getExactSizeIfKnown());
            return m462f();
        }
        long j = this.f1087g + 1;
        this.f1087g = j;
        boolean z = j < abstractC3020e.count();
        if (z) {
            return z;
        }
        this.f1087g = 0L;
        this.f1088h.clear();
        return m462f();
    }

    @Override // p033j$.util.Spliterator
    public final int characteristics() {
        m461h();
        int m480g = EnumC3019d4.m480g(this.f1082b.mo353r0()) & EnumC3019d4.f1044f;
        return (m480g & 64) != 0 ? (m480g & (-16449)) | (this.f1084d.characteristics() & 16448) : m480g;
    }

    @Override // p033j$.util.Spliterator
    public final long estimateSize() {
        m461h();
        return this.f1084d.estimateSize();
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2839k.m600e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        m461h();
        if (EnumC3019d4.SIZED.m483d(this.f1082b.mo353r0())) {
            return this.f1084d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m461h() {
        if (this.f1084d == null) {
            this.f1084d = (Spliterator) this.f1083c.get();
            this.f1083c = null;
        }
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }

    /* renamed from: j */
    abstract void mo388j();

    /* renamed from: k */
    abstract AbstractC3031f4 mo387k(Spliterator spliterator);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1084d);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f1081a || this.f1089i) {
            return null;
        }
        m461h();
        Spliterator trySplit = this.f1084d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo387k(trySplit);
    }
}
