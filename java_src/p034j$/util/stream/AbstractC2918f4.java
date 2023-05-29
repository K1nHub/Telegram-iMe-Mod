package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2696c;
import p034j$.util.function.InterfaceC2718y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2918f4 implements InterfaceC2732s {

    /* renamed from: a */
    final boolean f946a;

    /* renamed from: b */
    final AbstractC3030y2 f947b;

    /* renamed from: c */
    private InterfaceC2718y f948c;

    /* renamed from: d */
    InterfaceC2732s f949d;

    /* renamed from: e */
    InterfaceC2959m3 f950e;

    /* renamed from: f */
    InterfaceC2696c f951f;

    /* renamed from: g */
    long f952g;

    /* renamed from: h */
    AbstractC2907e f953h;

    /* renamed from: i */
    boolean f954i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2918f4(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        this.f947b = abstractC3030y2;
        this.f948c = interfaceC2718y;
        this.f949d = null;
        this.f946a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2918f4(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        this.f947b = abstractC3030y2;
        this.f948c = null;
        this.f949d = interfaceC2732s;
        this.f946a = z;
    }

    /* renamed from: f */
    private boolean m399f() {
        boolean mo113b;
        while (this.f953h.count() == 0) {
            if (!this.f950e.mo296o()) {
                C2889b c2889b = (C2889b) this.f951f;
                switch (c2889b.f882a) {
                    case 4:
                        C2972o4 c2972o4 = (C2972o4) c2889b.f883b;
                        mo113b = c2972o4.f949d.mo113b(c2972o4.f950e);
                        break;
                    case 5:
                        C2984q4 c2984q4 = (C2984q4) c2889b.f883b;
                        mo113b = c2984q4.f949d.mo113b(c2984q4.f950e);
                        break;
                    case 6:
                        C2996s4 c2996s4 = (C2996s4) c2889b.f883b;
                        mo113b = c2996s4.f949d.mo113b(c2996s4.f950e);
                        break;
                    default:
                        C2807L4 c2807l4 = (C2807L4) c2889b.f883b;
                        mo113b = c2807l4.f949d.mo113b(c2807l4.f950e);
                        break;
                }
                if (mo113b) {
                    continue;
                }
            }
            if (this.f954i) {
                return false;
            }
            this.f950e.mo321m();
            this.f954i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m400a() {
        AbstractC2907e abstractC2907e = this.f953h;
        if (abstractC2907e == null) {
            if (this.f954i) {
                return false;
            }
            m398h();
            mo325j();
            this.f952g = 0L;
            this.f950e.mo297n(this.f949d.getExactSizeIfKnown());
            return m399f();
        }
        long j = this.f952g + 1;
        this.f952g = j;
        boolean z = j < abstractC2907e.count();
        if (z) {
            return z;
        }
        this.f952g = 0L;
        this.f953h.clear();
        return m399f();
    }

    @Override // p034j$.util.InterfaceC2732s
    public final int characteristics() {
        m398h();
        int m417g = EnumC2906d4.m417g(this.f947b.mo290s0()) & EnumC2906d4.f909f;
        return (m417g & 64) != 0 ? (m417g & (-16449)) | (this.f949d.characteristics() & 16448) : m417g;
    }

    @Override // p034j$.util.InterfaceC2732s
    public final long estimateSize() {
        m398h();
        return this.f949d.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        if (AbstractC2659a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public final long getExactSizeIfKnown() {
        m398h();
        if (EnumC2906d4.SIZED.m420d(this.f947b.mo290s0())) {
            return this.f949d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m398h() {
        if (this.f949d == null) {
            this.f949d = (InterfaceC2732s) this.f948c.get();
            this.f948c = null;
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    /* renamed from: j */
    abstract void mo325j();

    /* renamed from: l */
    abstract AbstractC2918f4 mo324l(InterfaceC2732s interfaceC2732s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f949d);
    }

    @Override // p034j$.util.InterfaceC2732s
    public InterfaceC2732s trySplit() {
        if (!this.f946a || this.f954i) {
            return null;
        }
        m398h();
        InterfaceC2732s trySplit = this.f949d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo324l(trySplit);
    }
}
