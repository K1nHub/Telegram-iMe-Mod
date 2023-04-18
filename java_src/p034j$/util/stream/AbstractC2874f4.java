package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2652c;
import p034j$.util.function.InterfaceC2674y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2874f4 implements InterfaceC2688s {

    /* renamed from: a */
    final boolean f943a;

    /* renamed from: b */
    final AbstractC2986y2 f944b;

    /* renamed from: c */
    private InterfaceC2674y f945c;

    /* renamed from: d */
    InterfaceC2688s f946d;

    /* renamed from: e */
    InterfaceC2915m3 f947e;

    /* renamed from: f */
    InterfaceC2652c f948f;

    /* renamed from: g */
    long f949g;

    /* renamed from: h */
    AbstractC2863e f950h;

    /* renamed from: i */
    boolean f951i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2874f4(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        this.f944b = abstractC2986y2;
        this.f945c = interfaceC2674y;
        this.f946d = null;
        this.f943a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2874f4(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        this.f944b = abstractC2986y2;
        this.f945c = null;
        this.f946d = interfaceC2688s;
        this.f943a = z;
    }

    /* renamed from: f */
    private boolean m394f() {
        boolean mo108b;
        while (this.f950h.count() == 0) {
            if (!this.f947e.mo291o()) {
                C2845b c2845b = (C2845b) this.f948f;
                switch (c2845b.f879a) {
                    case 4:
                        C2928o4 c2928o4 = (C2928o4) c2845b.f880b;
                        mo108b = c2928o4.f946d.mo108b(c2928o4.f947e);
                        break;
                    case 5:
                        C2940q4 c2940q4 = (C2940q4) c2845b.f880b;
                        mo108b = c2940q4.f946d.mo108b(c2940q4.f947e);
                        break;
                    case 6:
                        C2952s4 c2952s4 = (C2952s4) c2845b.f880b;
                        mo108b = c2952s4.f946d.mo108b(c2952s4.f947e);
                        break;
                    default:
                        C2763L4 c2763l4 = (C2763L4) c2845b.f880b;
                        mo108b = c2763l4.f946d.mo108b(c2763l4.f947e);
                        break;
                }
                if (mo108b) {
                    continue;
                }
            }
            if (this.f951i) {
                return false;
            }
            this.f947e.mo316m();
            this.f951i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m395a() {
        AbstractC2863e abstractC2863e = this.f950h;
        if (abstractC2863e == null) {
            if (this.f951i) {
                return false;
            }
            m393h();
            mo320j();
            this.f949g = 0L;
            this.f947e.mo292n(this.f946d.getExactSizeIfKnown());
            return m394f();
        }
        long j = this.f949g + 1;
        this.f949g = j;
        boolean z = j < abstractC2863e.count();
        if (z) {
            return z;
        }
        this.f949g = 0L;
        this.f950h.clear();
        return m394f();
    }

    @Override // p034j$.util.InterfaceC2688s
    public final int characteristics() {
        m393h();
        int m412g = EnumC2862d4.m412g(this.f944b.mo285s0()) & EnumC2862d4.f906f;
        return (m412g & 64) != 0 ? (m412g & (-16449)) | (this.f946d.characteristics() & 16448) : m412g;
    }

    @Override // p034j$.util.InterfaceC2688s
    public final long estimateSize() {
        m393h();
        return this.f946d.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        if (AbstractC2615a.m601f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public final long getExactSizeIfKnown() {
        m393h();
        if (EnumC2862d4.SIZED.m415d(this.f944b.mo285s0())) {
            return this.f946d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m393h() {
        if (this.f946d == null) {
            this.f946d = (InterfaceC2688s) this.f945c.get();
            this.f945c = null;
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    /* renamed from: j */
    abstract void mo320j();

    /* renamed from: l */
    abstract AbstractC2874f4 mo319l(InterfaceC2688s interfaceC2688s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f946d);
    }

    @Override // p034j$.util.InterfaceC2688s
    public InterfaceC2688s trySplit() {
        if (!this.f943a || this.f951i) {
            return null;
        }
        m393h();
        InterfaceC2688s trySplit = this.f946d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo319l(trySplit);
    }
}
