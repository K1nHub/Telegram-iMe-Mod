package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2575c;
import p034j$.util.function.InterfaceC2597y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2797f4 implements InterfaceC2611s {

    /* renamed from: a */
    final boolean f942a;

    /* renamed from: b */
    final AbstractC2909y2 f943b;

    /* renamed from: c */
    private InterfaceC2597y f944c;

    /* renamed from: d */
    InterfaceC2611s f945d;

    /* renamed from: e */
    InterfaceC2838m3 f946e;

    /* renamed from: f */
    InterfaceC2575c f947f;

    /* renamed from: g */
    long f948g;

    /* renamed from: h */
    AbstractC2786e f949h;

    /* renamed from: i */
    boolean f950i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2797f4(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        this.f943b = abstractC2909y2;
        this.f944c = interfaceC2597y;
        this.f945d = null;
        this.f942a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2797f4(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        this.f943b = abstractC2909y2;
        this.f944c = null;
        this.f945d = interfaceC2611s;
        this.f942a = z;
    }

    /* renamed from: f */
    private boolean m414f() {
        boolean mo128b;
        while (this.f949h.count() == 0) {
            if (!this.f946e.mo311o()) {
                C2768b c2768b = (C2768b) this.f947f;
                switch (c2768b.f878a) {
                    case 4:
                        C2851o4 c2851o4 = (C2851o4) c2768b.f879b;
                        mo128b = c2851o4.f945d.mo128b(c2851o4.f946e);
                        break;
                    case 5:
                        C2863q4 c2863q4 = (C2863q4) c2768b.f879b;
                        mo128b = c2863q4.f945d.mo128b(c2863q4.f946e);
                        break;
                    case 6:
                        C2875s4 c2875s4 = (C2875s4) c2768b.f879b;
                        mo128b = c2875s4.f945d.mo128b(c2875s4.f946e);
                        break;
                    default:
                        C2686L4 c2686l4 = (C2686L4) c2768b.f879b;
                        mo128b = c2686l4.f945d.mo128b(c2686l4.f946e);
                        break;
                }
                if (mo128b) {
                    continue;
                }
            }
            if (this.f950i) {
                return false;
            }
            this.f946e.mo336m();
            this.f950i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m415a() {
        AbstractC2786e abstractC2786e = this.f949h;
        if (abstractC2786e == null) {
            if (this.f950i) {
                return false;
            }
            m413h();
            mo340j();
            this.f948g = 0L;
            this.f946e.mo312n(this.f945d.getExactSizeIfKnown());
            return m414f();
        }
        long j = this.f948g + 1;
        this.f948g = j;
        boolean z = j < abstractC2786e.count();
        if (z) {
            return z;
        }
        this.f948g = 0L;
        this.f949h.clear();
        return m414f();
    }

    @Override // p034j$.util.InterfaceC2611s
    public final int characteristics() {
        m413h();
        int m432g = EnumC2785d4.m432g(this.f943b.mo305s0()) & EnumC2785d4.f905f;
        return (m432g & 64) != 0 ? (m432g & (-16449)) | (this.f945d.characteristics() & 16448) : m432g;
    }

    @Override // p034j$.util.InterfaceC2611s
    public final long estimateSize() {
        m413h();
        return this.f945d.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        if (AbstractC2538a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public final long getExactSizeIfKnown() {
        m413h();
        if (EnumC2785d4.SIZED.m435d(this.f943b.mo305s0())) {
            return this.f945d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m413h() {
        if (this.f945d == null) {
            this.f945d = (InterfaceC2611s) this.f944c.get();
            this.f944c = null;
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    /* renamed from: j */
    abstract void mo340j();

    /* renamed from: l */
    abstract AbstractC2797f4 mo339l(InterfaceC2611s interfaceC2611s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f945d);
    }

    @Override // p034j$.util.InterfaceC2611s
    public InterfaceC2611s trySplit() {
        if (!this.f942a || this.f950i) {
            return null;
        }
        m413h();
        InterfaceC2611s trySplit = this.f945d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo339l(trySplit);
    }
}
