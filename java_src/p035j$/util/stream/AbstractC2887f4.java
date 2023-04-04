package p035j$.util.stream;

import java.util.Comparator;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2665c;
import p035j$.util.function.InterfaceC2687y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2887f4 implements InterfaceC2701s {

    /* renamed from: a */
    final boolean f948a;

    /* renamed from: b */
    final AbstractC2999y2 f949b;

    /* renamed from: c */
    private InterfaceC2687y f950c;

    /* renamed from: d */
    InterfaceC2701s f951d;

    /* renamed from: e */
    InterfaceC2928m3 f952e;

    /* renamed from: f */
    InterfaceC2665c f953f;

    /* renamed from: g */
    long f954g;

    /* renamed from: h */
    AbstractC2876e f955h;

    /* renamed from: i */
    boolean f956i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2887f4(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        this.f949b = abstractC2999y2;
        this.f950c = interfaceC2687y;
        this.f951d = null;
        this.f948a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2887f4(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        this.f949b = abstractC2999y2;
        this.f950c = null;
        this.f951d = interfaceC2701s;
        this.f948a = z;
    }

    /* renamed from: f */
    private boolean m408f() {
        boolean mo122b;
        while (this.f955h.count() == 0) {
            if (!this.f952e.mo305o()) {
                C2858b c2858b = (C2858b) this.f953f;
                switch (c2858b.f884a) {
                    case 4:
                        C2941o4 c2941o4 = (C2941o4) c2858b.f885b;
                        mo122b = c2941o4.f951d.mo122b(c2941o4.f952e);
                        break;
                    case 5:
                        C2953q4 c2953q4 = (C2953q4) c2858b.f885b;
                        mo122b = c2953q4.f951d.mo122b(c2953q4.f952e);
                        break;
                    case 6:
                        C2965s4 c2965s4 = (C2965s4) c2858b.f885b;
                        mo122b = c2965s4.f951d.mo122b(c2965s4.f952e);
                        break;
                    default:
                        C2776L4 c2776l4 = (C2776L4) c2858b.f885b;
                        mo122b = c2776l4.f951d.mo122b(c2776l4.f952e);
                        break;
                }
                if (mo122b) {
                    continue;
                }
            }
            if (this.f956i) {
                return false;
            }
            this.f952e.mo330m();
            this.f956i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m409a() {
        AbstractC2876e abstractC2876e = this.f955h;
        if (abstractC2876e == null) {
            if (this.f956i) {
                return false;
            }
            m407h();
            mo334j();
            this.f954g = 0L;
            this.f952e.mo306n(this.f951d.getExactSizeIfKnown());
            return m408f();
        }
        long j = this.f954g + 1;
        this.f954g = j;
        boolean z = j < abstractC2876e.count();
        if (z) {
            return z;
        }
        this.f954g = 0L;
        this.f955h.clear();
        return m408f();
    }

    @Override // p035j$.util.InterfaceC2701s
    public final int characteristics() {
        m407h();
        int m426g = EnumC2875d4.m426g(this.f949b.mo299s0()) & EnumC2875d4.f911f;
        return (m426g & 64) != 0 ? (m426g & (-16449)) | (this.f951d.characteristics() & 16448) : m426g;
    }

    @Override // p035j$.util.InterfaceC2701s
    public final long estimateSize() {
        m407h();
        return this.f951d.estimateSize();
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        if (AbstractC2628a.m615f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public final long getExactSizeIfKnown() {
        m407h();
        if (EnumC2875d4.SIZED.m429d(this.f949b.mo299s0())) {
            return this.f951d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m407h() {
        if (this.f951d == null) {
            this.f951d = (InterfaceC2701s) this.f950c.get();
            this.f950c = null;
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    /* renamed from: j */
    abstract void mo334j();

    /* renamed from: l */
    abstract AbstractC2887f4 mo333l(InterfaceC2701s interfaceC2701s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f951d);
    }

    @Override // p035j$.util.InterfaceC2701s
    public InterfaceC2701s trySplit() {
        if (!this.f948a || this.f956i) {
            return null;
        }
        m407h();
        InterfaceC2701s trySplit = this.f951d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo333l(trySplit);
    }
}
