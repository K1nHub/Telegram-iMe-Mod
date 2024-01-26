package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2895H4 extends AbstractC2907J4 implements Spliterator.InterfaceC2774d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2895H4(Spliterator.InterfaceC2774d interfaceC2774d, long j, long j2) {
        super(interfaceC2774d, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2895H4(Spliterator.InterfaceC2774d interfaceC2774d, AbstractC2895H4 abstractC2895H4) {
        super(interfaceC2774d, abstractC2895H4);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: forEachRemaining */
    public void m573e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3054j4 abstractC3054j4 = null;
        while (true) {
            int m565r = m565r();
            if (m565r == 1) {
                return;
            }
            if (m565r != 2) {
                ((Spliterator.InterfaceC2774d) this.f906a).forEachRemaining(obj);
                return;
            }
            if (abstractC3054j4 == null) {
                abstractC3054j4 = mo568t(128);
            } else {
                abstractC3054j4.f1110b = 0;
            }
            long j = 0;
            while (((Spliterator.InterfaceC2774d) this.f906a).tryAdvance(abstractC3054j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC3054j4.mo452b(obj, m567p(j));
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2838k.m605d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2838k.m604e(this, i);
    }

    /* renamed from: s */
    protected abstract void mo569s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC3054j4 mo568t(int i);

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: tryAdvance */
    public boolean m570n(Object obj) {
        Objects.requireNonNull(obj);
        while (m565r() != 1 && ((Spliterator.InterfaceC2774d) this.f906a).tryAdvance(this)) {
            if (m567p(1L) == 1) {
                mo569s(obj);
                return true;
            }
        }
        return false;
    }
}
