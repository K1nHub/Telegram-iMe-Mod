package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2589c;
import p034j$.util.function.InterfaceC2611y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2811f4 implements InterfaceC2625s {

    /* renamed from: a */
    final boolean f943a;

    /* renamed from: b */
    final AbstractC2923y2 f944b;

    /* renamed from: c */
    private InterfaceC2611y f945c;

    /* renamed from: d */
    InterfaceC2625s f946d;

    /* renamed from: e */
    InterfaceC2852m3 f947e;

    /* renamed from: f */
    InterfaceC2589c f948f;

    /* renamed from: g */
    long f949g;

    /* renamed from: h */
    AbstractC2800e f950h;

    /* renamed from: i */
    boolean f951i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2811f4(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        this.f944b = abstractC2923y2;
        this.f945c = interfaceC2611y;
        this.f946d = null;
        this.f943a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2811f4(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        this.f944b = abstractC2923y2;
        this.f945c = null;
        this.f946d = interfaceC2625s;
        this.f943a = z;
    }

    /* renamed from: f */
    private boolean m413f() {
        boolean mo127b;
        while (this.f950h.count() == 0) {
            if (!this.f947e.mo310o()) {
                C2782b c2782b = (C2782b) this.f948f;
                switch (c2782b.f879a) {
                    case 4:
                        C2865o4 c2865o4 = (C2865o4) c2782b.f880b;
                        mo127b = c2865o4.f946d.mo127b(c2865o4.f947e);
                        break;
                    case 5:
                        C2877q4 c2877q4 = (C2877q4) c2782b.f880b;
                        mo127b = c2877q4.f946d.mo127b(c2877q4.f947e);
                        break;
                    case 6:
                        C2889s4 c2889s4 = (C2889s4) c2782b.f880b;
                        mo127b = c2889s4.f946d.mo127b(c2889s4.f947e);
                        break;
                    default:
                        C2700L4 c2700l4 = (C2700L4) c2782b.f880b;
                        mo127b = c2700l4.f946d.mo127b(c2700l4.f947e);
                        break;
                }
                if (mo127b) {
                    continue;
                }
            }
            if (this.f951i) {
                return false;
            }
            this.f947e.mo335m();
            this.f951i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m414a() {
        AbstractC2800e abstractC2800e = this.f950h;
        if (abstractC2800e == null) {
            if (this.f951i) {
                return false;
            }
            m412h();
            mo339j();
            this.f949g = 0L;
            this.f947e.mo311n(this.f946d.getExactSizeIfKnown());
            return m413f();
        }
        long j = this.f949g + 1;
        this.f949g = j;
        boolean z = j < abstractC2800e.count();
        if (z) {
            return z;
        }
        this.f949g = 0L;
        this.f950h.clear();
        return m413f();
    }

    @Override // p034j$.util.InterfaceC2625s
    public final int characteristics() {
        m412h();
        int m431g = EnumC2799d4.m431g(this.f944b.mo304s0()) & EnumC2799d4.f906f;
        return (m431g & 64) != 0 ? (m431g & (-16449)) | (this.f946d.characteristics() & 16448) : m431g;
    }

    @Override // p034j$.util.InterfaceC2625s
    public final long estimateSize() {
        m412h();
        return this.f946d.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        if (AbstractC2552a.m620f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2625s
    public final long getExactSizeIfKnown() {
        m412h();
        if (EnumC2799d4.SIZED.m434d(this.f944b.mo304s0())) {
            return this.f946d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m412h() {
        if (this.f946d == null) {
            this.f946d = (InterfaceC2625s) this.f945c.get();
            this.f945c = null;
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    /* renamed from: j */
    abstract void mo339j();

    /* renamed from: l */
    abstract AbstractC2811f4 mo338l(InterfaceC2625s interfaceC2625s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f946d);
    }

    @Override // p034j$.util.InterfaceC2625s
    public InterfaceC2625s trySplit() {
        if (!this.f943a || this.f951i) {
            return null;
        }
        m412h();
        InterfaceC2625s trySplit = this.f946d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo338l(trySplit);
    }
}
