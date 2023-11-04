package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2817c;
import p033j$.util.function.InterfaceC2838x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3035f4 implements Spliterator {

    /* renamed from: a */
    final boolean f1081a;

    /* renamed from: b */
    final AbstractC3147y2 f1082b;

    /* renamed from: c */
    private InterfaceC2838x f1083c;

    /* renamed from: d */
    Spliterator f1084d;

    /* renamed from: e */
    InterfaceC3076m3 f1085e;

    /* renamed from: f */
    InterfaceC2817c f1086f;

    /* renamed from: g */
    long f1087g;

    /* renamed from: h */
    AbstractC3024e f1088h;

    /* renamed from: i */
    boolean f1089i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3035f4(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z) {
        this.f1082b = abstractC3147y2;
        this.f1083c = null;
        this.f1084d = spliterator;
        this.f1081a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3035f4(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        this.f1082b = abstractC3147y2;
        this.f1083c = interfaceC2838x;
        this.f1084d = null;
        this.f1081a = z;
    }

    /* renamed from: f */
    private boolean m463f() {
        boolean mo179b;
        while (this.f1088h.count() == 0) {
            if (!this.f1085e.mo360o()) {
                C3006b c3006b = (C3006b) this.f1086f;
                switch (c3006b.f1017a) {
                    case 4:
                        C3089o4 c3089o4 = (C3089o4) c3006b.f1018b;
                        mo179b = c3089o4.f1084d.mo179b(c3089o4.f1085e);
                        break;
                    case 5:
                        C3101q4 c3101q4 = (C3101q4) c3006b.f1018b;
                        mo179b = c3101q4.f1084d.mo179b(c3101q4.f1085e);
                        break;
                    case 6:
                        C3113s4 c3113s4 = (C3113s4) c3006b.f1018b;
                        mo179b = c3113s4.f1084d.mo179b(c3113s4.f1085e);
                        break;
                    default:
                        C2924L4 c2924l4 = (C2924L4) c3006b.f1018b;
                        mo179b = c2924l4.f1084d.mo179b(c2924l4.f1085e);
                        break;
                }
                if (mo179b) {
                    continue;
                }
            }
            if (this.f1089i) {
                return false;
            }
            this.f1085e.mo385l();
            this.f1089i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m464a() {
        AbstractC3024e abstractC3024e = this.f1088h;
        if (abstractC3024e == null) {
            if (this.f1089i) {
                return false;
            }
            m462h();
            mo389j();
            this.f1087g = 0L;
            this.f1085e.mo361m(this.f1084d.getExactSizeIfKnown());
            return m463f();
        }
        long j = this.f1087g + 1;
        this.f1087g = j;
        boolean z = j < abstractC3024e.count();
        if (z) {
            return z;
        }
        this.f1087g = 0L;
        this.f1088h.clear();
        return m463f();
    }

    @Override // p033j$.util.Spliterator
    public final int characteristics() {
        m462h();
        int m481g = EnumC3023d4.m481g(this.f1082b.mo354r0()) & EnumC3023d4.f1044f;
        return (m481g & 64) != 0 ? (m481g & (-16449)) | (this.f1084d.characteristics() & 16448) : m481g;
    }

    @Override // p033j$.util.Spliterator
    public final long estimateSize() {
        m462h();
        return this.f1084d.estimateSize();
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2843k.m601e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        m462h();
        if (EnumC3023d4.SIZED.m484d(this.f1082b.mo354r0())) {
            return this.f1084d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m462h() {
        if (this.f1084d == null) {
            this.f1084d = (Spliterator) this.f1083c.get();
            this.f1083c = null;
        }
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2843k.m601e(this, i);
    }

    /* renamed from: j */
    abstract void mo389j();

    /* renamed from: k */
    abstract AbstractC3035f4 mo388k(Spliterator spliterator);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1084d);
    }

    @Override // p033j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.f1081a || this.f1089i) {
            return null;
        }
        m462h();
        Spliterator trySplit = this.f1084d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo388k(trySplit);
    }
}
