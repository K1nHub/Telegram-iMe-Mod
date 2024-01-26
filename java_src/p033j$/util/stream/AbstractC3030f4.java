package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2812c;
import p033j$.util.function.InterfaceC2833x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3030f4 implements Spliterator {

    /* renamed from: a */
    final boolean f1081a;

    /* renamed from: b */
    final AbstractC3142y2 f1082b;

    /* renamed from: c */
    private InterfaceC2833x f1083c;

    /* renamed from: d */
    Spliterator f1084d;

    /* renamed from: e */
    InterfaceC3071m3 f1085e;

    /* renamed from: f */
    InterfaceC2812c f1086f;

    /* renamed from: g */
    long f1087g;

    /* renamed from: h */
    AbstractC3019e f1088h;

    /* renamed from: i */
    boolean f1089i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3030f4(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        this.f1082b = abstractC3142y2;
        this.f1083c = null;
        this.f1084d = spliterator;
        this.f1081a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3030f4(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        this.f1082b = abstractC3142y2;
        this.f1083c = interfaceC2833x;
        this.f1084d = null;
        this.f1081a = z;
    }

    /* renamed from: f */
    private boolean m466f() {
        boolean mo182b;
        while (this.f1088h.count() == 0) {
            if (!this.f1085e.mo363o()) {
                C3001b c3001b = (C3001b) this.f1086f;
                switch (c3001b.f1017a) {
                    case 4:
                        C3084o4 c3084o4 = (C3084o4) c3001b.f1018b;
                        mo182b = c3084o4.f1084d.mo182b(c3084o4.f1085e);
                        break;
                    case 5:
                        C3096q4 c3096q4 = (C3096q4) c3001b.f1018b;
                        mo182b = c3096q4.f1084d.mo182b(c3096q4.f1085e);
                        break;
                    case 6:
                        C3108s4 c3108s4 = (C3108s4) c3001b.f1018b;
                        mo182b = c3108s4.f1084d.mo182b(c3108s4.f1085e);
                        break;
                    default:
                        C2919L4 c2919l4 = (C2919L4) c3001b.f1018b;
                        mo182b = c2919l4.f1084d.mo182b(c2919l4.f1085e);
                        break;
                }
                if (mo182b) {
                    continue;
                }
            }
            if (this.f1089i) {
                return false;
            }
            this.f1085e.mo388l();
            this.f1089i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m467a() {
        AbstractC3019e abstractC3019e = this.f1088h;
        if (abstractC3019e == null) {
            if (this.f1089i) {
                return false;
            }
            m465h();
            mo392j();
            this.f1087g = 0L;
            this.f1085e.mo364m(this.f1084d.getExactSizeIfKnown());
            return m466f();
        }
        long j = this.f1087g + 1;
        this.f1087g = j;
        boolean z = j < abstractC3019e.count();
        if (z) {
            return z;
        }
        this.f1087g = 0L;
        this.f1088h.clear();
        return m466f();
    }

    @Override // p033j$.util.Spliterator
    public final int characteristics() {
        m465h();
        int m484g = EnumC3018d4.m484g(this.f1082b.mo357r0()) & EnumC3018d4.f1044f;
        return (m484g & 64) != 0 ? (m484g & (-16449)) | (this.f1084d.characteristics() & 16448) : m484g;
    }

    @Override // p033j$.util.Spliterator
    public final long estimateSize() {
        m465h();
        return this.f1084d.estimateSize();
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2838k.m604e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        m465h();
        if (EnumC3018d4.SIZED.m487d(this.f1082b.mo357r0())) {
            return this.f1084d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m465h() {
        if (this.f1084d == null) {
            this.f1084d = (Spliterator) this.f1083c.get();
            this.f1083c = null;
        }
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    /* renamed from: j */
    abstract void mo392j();

    /* renamed from: k */
    abstract AbstractC3030f4 mo391k(Spliterator spliterator);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1084d);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f1081a || this.f1089i) {
            return null;
        }
        m465h();
        Spliterator trySplit = this.f1084d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo391k(trySplit);
    }
}
