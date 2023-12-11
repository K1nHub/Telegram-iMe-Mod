package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2814c;
import p033j$.util.function.InterfaceC2835x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3032f4 implements Spliterator {

    /* renamed from: a */
    final boolean f1081a;

    /* renamed from: b */
    final AbstractC3144y2 f1082b;

    /* renamed from: c */
    private InterfaceC2835x f1083c;

    /* renamed from: d */
    Spliterator f1084d;

    /* renamed from: e */
    InterfaceC3073m3 f1085e;

    /* renamed from: f */
    InterfaceC2814c f1086f;

    /* renamed from: g */
    long f1087g;

    /* renamed from: h */
    AbstractC3021e f1088h;

    /* renamed from: i */
    boolean f1089i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3032f4(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z) {
        this.f1082b = abstractC3144y2;
        this.f1083c = null;
        this.f1084d = spliterator;
        this.f1081a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3032f4(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z) {
        this.f1082b = abstractC3144y2;
        this.f1083c = interfaceC2835x;
        this.f1084d = null;
        this.f1081a = z;
    }

    /* renamed from: f */
    private boolean m463f() {
        boolean mo179b;
        while (this.f1088h.count() == 0) {
            if (!this.f1085e.mo360o()) {
                C3003b c3003b = (C3003b) this.f1086f;
                switch (c3003b.f1017a) {
                    case 4:
                        C3086o4 c3086o4 = (C3086o4) c3003b.f1018b;
                        mo179b = c3086o4.f1084d.mo179b(c3086o4.f1085e);
                        break;
                    case 5:
                        C3098q4 c3098q4 = (C3098q4) c3003b.f1018b;
                        mo179b = c3098q4.f1084d.mo179b(c3098q4.f1085e);
                        break;
                    case 6:
                        C3110s4 c3110s4 = (C3110s4) c3003b.f1018b;
                        mo179b = c3110s4.f1084d.mo179b(c3110s4.f1085e);
                        break;
                    default:
                        C2921L4 c2921l4 = (C2921L4) c3003b.f1018b;
                        mo179b = c2921l4.f1084d.mo179b(c2921l4.f1085e);
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
        AbstractC3021e abstractC3021e = this.f1088h;
        if (abstractC3021e == null) {
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
        boolean z = j < abstractC3021e.count();
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
        int m481g = EnumC3020d4.m481g(this.f1082b.mo354r0()) & EnumC3020d4.f1044f;
        return (m481g & 64) != 0 ? (m481g & (-16449)) | (this.f1084d.characteristics() & 16448) : m481g;
    }

    @Override // p033j$.util.Spliterator
    public final long estimateSize() {
        m462h();
        return this.f1084d.estimateSize();
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        if (AbstractC2840k.m601e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        m462h();
        if (EnumC3020d4.SIZED.m484d(this.f1082b.mo354r0())) {
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
        return AbstractC2840k.m601e(this, i);
    }

    /* renamed from: j */
    abstract void mo389j();

    /* renamed from: k */
    abstract AbstractC3032f4 mo388k(Spliterator spliterator);

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
